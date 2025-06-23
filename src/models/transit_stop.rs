use crate::{
    paginated::{Paginate, PaginationResult},
    ProjectPooledConnection,
};

use crate::schema::transit_stop;
use diesel::{
    prelude::{Insertable, Queryable},
    QueryDsl, QueryResult, TextExpressionMethods,
};
use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Queryable, Insertable, Serialize, Deserialize)]
#[diesel(table_name = transit_stop)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct TransitStop {
    pub id: String,
    pub route_id: String,
    pub route_long_name: String,
    pub stop_name: String,
    pub stop_lon: f32,
    pub stop_lat: f32,
    pub shortname: String,
    pub municipality_name: String,
    pub insee_code: String,
    pub mode: String,
}

impl TransitStop {
    /// Retrieves all `transit_stops` from the database.
    ///
    /// # Arguments
    /// * `page` - The page number
    /// * `per_page` - The number of items per page
    /// * `conn` - Database connection
    ///
    /// # Errors
    /// * If the `transit_stops` cannot be retrieved
    ///
    /// # Returns
    /// * `PaginationResult<TransitStop>` - The paginated result of `transit_stops`
    pub fn all(
        page: i64,
        per_page: i64,
        conn: &mut ProjectPooledConnection,
    ) -> QueryResult<PaginationResult<TransitStop>> {
        transit_stop::table
            .order(transit_stop::id)
            .paginate(page)
            .per_page(per_page)
            .load_and_count_pages(conn)
    }

    /// Searches for transit stops in the database.
    /// The active fields are `stop_name` and `route_long_name` and `shortname`.
    ///
    /// # Arguments
    /// * `query` - The search query
    /// * `page` - The page number
    /// * `per_page` - The number of items per page
    /// * `conn` - Database connection
    ///
    /// # Errors
    /// If the transit stops cannot be retrieved
    ///
    /// # Returns
    /// * `PaginationResult<TransitStop>` - A `QueryResult` containing a `PaginationResult` of `TransitStop` objects
    pub fn search(
        query: &str,
        page: i64,
        per_page: i64,
        conn: &mut ProjectPooledConnection,
    ) -> QueryResult<PaginationResult<TransitStop>> {
        let base_query = if query.is_empty() {
            transit_stop::table.into_boxed()
        } else {
            transit_stop::table
                .filter(transit_stop::stop_name.like(format!("%{query}%")))
                .or_filter(transit_stop::route_long_name.like(format!("%{query}%")))
                .or_filter(transit_stop::shortname.like(format!("%{query}%")))
                .into_boxed()
        };

        base_query
            .order(transit_stop::id)
            .paginate(page)
            .per_page(per_page)
            .load_and_count_pages(conn)
    }
}
