use diesel::pg::Pg;
use diesel::query_builder::{AstPass, Query, QueryFragment, QueryId};
use diesel::query_dsl::methods::LoadQuery;
use diesel::sql_types::BigInt;
use diesel::{PgConnection, QueryResult, RunQueryDsl};
use serde::{Deserialize, Serialize};

use crate::{DEFAULT_PAGE, DEFAULT_PER_PAGE, MAX_PER_PAGE};

pub trait Paginate: Sized {
    fn paginate(self, page: i64) -> Paginated<Self>;
}

/// Makes `Paginate` for any wanted type.
impl<T> Paginate for T {
    fn paginate(self, page: i64) -> Paginated<Self> {
        Paginated {
            query: self,
            per_page: DEFAULT_PER_PAGE,
            page,
            offset: (page - 1) * DEFAULT_PER_PAGE,
        }
    }
}

#[derive(Clone, Copy, QueryId)]
pub struct Paginated<T> {
    query: T,
    page: i64,
    per_page: i64,
    offset: i64,
}

#[derive(Serialize, Deserialize)]
pub struct PaginationResult<T> {
    pub items: Vec<T>,
    pub total_items: i64,
    pub total_pages: i64,
    pub page: i64,
    pub per_page: i64,
}

impl<T> Paginated<T> {
    #[must_use]
    pub fn per_page(self, per_page: i64) -> Self {
        Paginated {
            per_page,
            offset: (self.page - 1) * per_page,
            ..self
        }
    }

    /// Loads the paginated results and counts the total number of items.
    /// This function is used to return a `PaginationResult` containing the paginated items.
    ///
    /// # Arguments
    /// * `conn` - Database connection
    ///
    /// # Errors
    /// * Returns a `QueryResult` error if the database operation fails
    /// * Returns a `QueryResult` error if pagination calculation fails
    ///
    /// # Returns
    /// * `PaginationResult<U>` - The paginated items and total number of items
    pub fn load_and_count_pages<'a, U>(
        self,
        conn: &mut PgConnection,
    ) -> QueryResult<PaginationResult<U>>
    where
        Self: LoadQuery<'a, PgConnection, (U, i64)>,
    {
        let per_page = self.per_page;
        let page = self.page;
        let results = self.load::<(U, i64)>(conn)?;
        let total_items = results.first().map_or(0, |x| x.1);
        let records = results.into_iter().map(|x| x.0).collect();
        let total_pages = (total_items + per_page - 1) / per_page;

        Ok(PaginationResult {
            items: records,
            total_items,
            total_pages,
            page,
            per_page,
        })
    }
}

impl<T: Query> Query for Paginated<T> {
    type SqlType = (T::SqlType, BigInt);
}

impl<T> RunQueryDsl<PgConnection> for Paginated<T> {}

impl<T> QueryFragment<Pg> for Paginated<T>
where
    T: QueryFragment<Pg>,
{
    /// Builds the SQL AST for a paginated query with total count.
    ///
    /// This function implements the `QueryFragment` trait for `Paginated<T>`, which is used by
    /// Diesel ORM to generate SQL queries. It wraps the original query with pagination logic
    /// that includes both LIMIT/OFFSET for pagination and COUNT(*) OVER () for getting the
    /// total number of records without requiring a separate query.
    ///
    /// The generated SQL structure is:
    /// ```sql
    /// SELECT *, COUNT(*) OVER () FROM (
    ///   -- Original query goes here
    /// ) AS subquery
    /// LIMIT ? OFFSET ?
    /// ```
    ///
    /// # Arguments
    /// * `out` - The AST pass object used to build the SQL query incrementally
    ///
    /// # Returns
    /// * `QueryResult<()>` - Success if the query was built successfully, error otherwise
    ///
    /// # Errors
    /// * Returns a `QueryResult` error if the inner query's `walk_ast` fails
    /// * Returns a `QueryResult` error if parameter binding fails
    ///
    /// # Example Generated SQL
    /// For a query like `SELECT * FROM users WHERE active = true` with page 2, `per_page` 10:
    /// ```sql
    /// SELECT *, COUNT(*) OVER () FROM (
    ///   SELECT * FROM users WHERE active = true
    /// ) AS subquery
    /// LIMIT 10 OFFSET 10
    /// ```
    fn walk_ast<'b>(&'b self, mut out: AstPass<'_, 'b, Pg>) -> QueryResult<()> {
        out.push_sql("SELECT *, COUNT(*) OVER () FROM (");
        self.query.walk_ast(out.reborrow())?;
        out.push_sql(") AS subquery LIMIT ");
        out.push_bind_param::<BigInt, _>(&self.per_page)?;
        out.push_sql(" OFFSET ");
        out.push_bind_param::<BigInt, _>(&self.offset)?;

        Ok(())
    }
}

/// Returns the default pagination values
///
/// # Arguments
/// * `page` - The default page number
/// * `per_page` - The default number of items per page
///
/// # Returns
/// * `(i64, i64)` - The default page number and the default number of items per page
#[must_use]
pub fn set_pagination_defaults(page: Option<i64>, per_page: Option<i64>) -> (i64, i64) {
    let page = page.map_or(DEFAULT_PAGE, |p| p.max(1));
    let per_page = per_page.map_or(DEFAULT_PER_PAGE, |p| p.clamp(1, MAX_PER_PAGE));

    (page, per_page)
}

#[cfg(test)]
mod tests {
    use super::*;
    use serde_json;

    #[test]
    fn test_set_pagination_defaults_with_none_values() {
        let (page, per_page) = set_pagination_defaults(None, None);

        assert_eq!(page, DEFAULT_PAGE);
        assert_eq!(per_page, DEFAULT_PER_PAGE);
    }

    #[test]
    fn test_set_pagination_defaults_with_valid_values() {
        let (page, per_page) = set_pagination_defaults(Some(5), Some(25));
        assert_eq!(page, 5);
        assert_eq!(per_page, 25);
    }

    #[test]
    fn test_set_pagination_defaults_page_clamping() {
        // Test negative page number gets clamped to 1
        let (page, _) = set_pagination_defaults(Some(-1), None);
        assert_eq!(page, 1);

        // Test zero page number gets clamped to 1
        let (page, _) = set_pagination_defaults(Some(0), None);
        assert_eq!(page, 1);
    }

    #[test]
    fn test_set_pagination_defaults_per_page_clamping() {
        // Test negative per_page gets clamped to 1
        let (_, per_page) = set_pagination_defaults(None, Some(-5));
        assert_eq!(per_page, 1);

        // Test zero per_page gets clamped to 1
        let (_, per_page) = set_pagination_defaults(None, Some(0));
        assert_eq!(per_page, 1);

        // Test excessive per_page gets clamped to MAX_PER_PAGE
        let (_, per_page) = set_pagination_defaults(None, Some(MAX_PER_PAGE + 1));
        assert_eq!(per_page, MAX_PER_PAGE);
    }

    #[test]
    fn test_pagination_result_serialization() {
        let result = PaginationResult {
            items: vec!["item1".to_string(), "item2".to_string()],
            total_items: 100,
            total_pages: 10,
            page: 1,
            per_page: 10,
        };

        let serialized = serde_json::to_string(&result).expect("Failed to serialize");

        assert!(serialized.contains("\"total_items\":100"));
        assert!(serialized.contains("\"total_pages\":10"));
        assert!(serialized.contains("\"page\":1"));
        assert!(serialized.contains("\"per_page\":10"));
    }

    #[test]
    fn test_pagination_result_deserialization() {
        let json_data = r#"{
            "items": ["item1", "item2"],
            "total_items": 50,
            "total_pages": 5,
            "page": 2,
            "per_page": 10
        }"#;

        let result: PaginationResult<String> =
            serde_json::from_str(json_data).expect("Failed to deserialize");

        assert_eq!(result.items.len(), 2);
        assert_eq!(result.total_items, 50);
        assert_eq!(result.total_pages, 5);
        assert_eq!(result.page, 2);
        assert_eq!(result.per_page, 10);
    }

    #[test]
    fn test_paginate_trait_implementation() {
        // Create a mock query (using a simple string as placeholder)
        let query = "SELECT * FROM table";
        let paginated = query.paginate(3);

        assert_eq!(paginated.page, 3);
        assert_eq!(paginated.per_page, DEFAULT_PER_PAGE);
        assert_eq!(paginated.offset, (3 - 1) * DEFAULT_PER_PAGE);
    }

    #[test]
    fn test_paginated_per_page_method() {
        let query = "SELECT * FROM table";
        let paginated = query.paginate(2).per_page(20);

        assert_eq!(paginated.page, 2);
        assert_eq!(paginated.per_page, 20);
        assert_eq!(paginated.offset, 20);
    }

    #[test]
    fn test_paginated_offset_calculation() {
        let query = "SELECT * FROM table";

        // Test page 1
        let paginated = query.paginate(1).per_page(10);
        assert_eq!(paginated.offset, 0);

        // Test page 3
        let paginated = query.paginate(3).per_page(15);
        assert_eq!(paginated.offset, 30);

        // Test page 5
        let paginated = query.paginate(5).per_page(7);
        assert_eq!(paginated.offset, 28);
    }

    #[test]
    fn test_edge_case_calculations() {
        // Test with boundary values from constants
        let (page, per_page) = set_pagination_defaults(Some(1), Some(MAX_PER_PAGE));
        assert_eq!(page, 1);
        assert_eq!(per_page, MAX_PER_PAGE);

        // Test with exactly MAX_PER_PAGE
        let (_, per_page) = set_pagination_defaults(None, Some(MAX_PER_PAGE));
        assert_eq!(per_page, MAX_PER_PAGE);
    }
}
