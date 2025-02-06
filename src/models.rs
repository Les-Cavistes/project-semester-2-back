use diesel::{
    prelude::{Insertable, Queryable},
    QueryResult, RunQueryDsl,
};
use serde::{Deserialize, Serialize};

use crate::{schema::transit_stop, DbConn};

#[derive(Debug, Clone, Queryable, Insertable, Serialize, Deserialize)]
#[serde(crate = "rocket::serde")]
#[diesel(table_name = transit_stop)]
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
}
