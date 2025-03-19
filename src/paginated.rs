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

#[derive(Debug, Clone, Copy, QueryId)]
pub struct Paginated<T> {
    query: T,
    page: i64,
    per_page: i64,
    offset: i64,
}

#[derive(Debug, Serialize, Deserialize)]
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

    /// # `load_and_count_pages`
    /// Loads the paginated results and counts the total number of items.
    /// This function is used to return a `PaginationResult` containing the paginated items.
    ///
    /// ## Arguments
    /// * `conn` - Database connection
    ///
    /// ## Returns
    /// A `QueryResult` containing the paginated items and total number of items
    ///
    /// ## Errors
    /// * Returns a `QueryResult` error if the database operation fails
    /// * Returns a `QueryResult` error if pagination calculation fails
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
    fn walk_ast<'b>(&'b self, mut out: AstPass<'_, 'b, Pg>) -> QueryResult<()> {
        out.push_sql("WITH counted_query AS (");
        self.query.walk_ast(out.reborrow())?;
        out.push_sql(
            ") SELECT *, (SELECT COUNT(*) FROM counted_query) AS total FROM counted_query LIMIT ",
        );
        out.push_bind_param::<BigInt, _>(&self.per_page)?;
        out.push_sql(" OFFSET ");
        out.push_bind_param::<BigInt, _>(&self.offset)?;
        Ok(())
    }
}

/// # `set_pagination_defaults`
/// Returns the default pagination values
///
/// ## Arguments
/// * `page` - The default page number
/// * `per_page` - The default number of items per page
#[must_use]
pub fn set_pagination_defaults(page: Option<i64>, per_page: Option<i64>) -> (i64, i64) {
    let page = page.map_or(DEFAULT_PAGE, |p| p.max(1));
    let per_page = per_page.map_or(MAX_PER_PAGE, |p| p.clamp(1, MAX_PER_PAGE));

    (page, per_page)
}
