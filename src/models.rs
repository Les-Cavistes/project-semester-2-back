use crate::paginated::{Paginate, PaginationResult};

use diesel::{
    prelude::{Insertable, Queryable},
    QueryDsl, QueryResult, RunQueryDsl, TextExpressionMethods,
};
use serde::{Deserialize, Serialize};

use crate::{schema::transit_stop, DbConn};

#[derive(Debug, Clone, Queryable, Insertable, Serialize, Deserialize)]
#[serde(crate = "rocket::serde")]
#[diesel(table_name = transit_stop)]
#[diesel(check_for_backend(diesel::mysql::Mysql))]
pub struct TransitStop {
    pub id: String,
    pub route_id: String,
    pub route_long_name: String,
    pub stop_name: String,
    pub stop_lon: f64,
    pub stop_lat: f64,
    pub shortname: String,
    pub nom_commune: String,
    pub code_insee: String,
    pub mode: String,
    pub created_at: i64,
    pub updated_at: i64,
}

#[derive(Debug, Clone, Queryable, Insertable, Serialize, Deserialize)]
#[serde(crate = "rocket::serde")]
#[diesel(table_name = transit_stop)]
pub struct NewTransitStop {
    pub id: String,
    pub route_id: String,
    pub route_long_name: String,
    pub stop_name: String,
    pub stop_lon: f64,
    pub stop_lat: f64,
    pub shortname: String,
    pub nom_commune: String,
    pub code_insee: String,
    pub mode: String,
}

impl TransitStop {
    /// # `insert`
    /// Creates a new task in the database.
    ///
    /// ## Arguments
    /// * `todo` - The todo item to insert
    /// * `conn` - Database connection
    ///
    /// ## Errors
    /// If the task cannot be inserted
    ///
    /// ## Returns
    /// The newly created task
    pub async fn insert(transit_stop: NewTransitStop, conn: &DbConn) -> QueryResult<String> {
        conn.run(|c| {
            diesel::insert_into(transit_stop::table)
                .values(&transit_stop)
                .execute(c)?;

            Ok(transit_stop.id)
        })
        .await
    }

    /// # `search`
    /// Searches for tasks in the database.
    /// The active fields are `stop_name` and `route_long_name` and `shortname`.
    ///
    /// ## Arguments
    /// * `query` - The search query
    /// * `page` - The page number
    /// * `per_page` - The number of items per page
    /// * `conn` - Database connection
    ///
    /// ## Errors
    /// If the tasks cannot be retrieved
    pub async fn search(
        query: String,
        page: i64,
        per_page: i64,
        conn: &DbConn,
    ) -> QueryResult<PaginationResult<TransitStop>> {
        // Changed return type
        conn.run(move |c| {
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
                .load_and_count_pages(c)
        })
        .await
    }
}
