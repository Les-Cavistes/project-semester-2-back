use crate::{
    paginated::{Paginate, PaginationResult},
    ProjectPooledConnection,
};

use crate::schema::transit_stop;
use diesel::{
    prelude::{Insertable, Queryable},
    QueryDsl, QueryResult, RunQueryDsl, TextExpressionMethods,
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

#[derive(Debug, Clone, Queryable, Insertable, Serialize, Deserialize)]
#[diesel(table_name = transit_stop)]
pub struct NewTransitStop {
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
    // created_at and updated_at will be set by PostgreSQL defaults
}

impl TransitStop {
    /// Creates a new transit stop in the database.
    ///
    /// # Arguments
    /// * `transit_stop` - The transit stop to insert
    /// * `conn` - Database connection
    ///
    /// # Errors
    /// * If the transit stop cannot be inserted
    ///
    /// # Returns
    /// * `String` - The ID of the newly created transit stop
    pub fn insert(
        transit_stop: &NewTransitStop,
        conn: &mut ProjectPooledConnection,
    ) -> QueryResult<String> {
        let id = transit_stop.id.clone();

        diesel::insert_into(transit_stop::table)
            .values(transit_stop)
            .execute(conn)?;

        Ok(id)
    }

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

#[cfg(test)]
mod tests {
    use super::*;
    use serde_json;

    fn create_test_transit_stop() -> NewTransitStop {
        NewTransitStop {
            id: "test_stop_001".to_string(),
            route_id: "route_123".to_string(),
            route_long_name: "Metro Line 1".to_string(),
            stop_name: "Châtelet".to_string(),
            stop_lon: 2.347_3,
            stop_lat: 48.8566,
            shortname: "CH".to_string(),
            municipality_name: "Paris".to_string(),
            insee_code: "75101".to_string(),
            mode: "metro".to_string(),
        }
    }

    #[test]
    fn test_new_transit_stop_creation() {
        let stop = create_test_transit_stop();

        assert_eq!(stop.id, "test_stop_001");
        assert_eq!(stop.route_long_name, "Metro Line 1");
        assert_eq!(stop.stop_name, "Châtelet");
        assert_eq!(stop.mode, "metro");
    }

    #[test]
    fn test_transit_stop_serialization() {
        let stop = create_test_transit_stop();
        let serialized = serde_json::to_string(&stop).expect("Failed to serialize");

        assert!(serialized.contains("\"id\":\"test_stop_001\""));
        assert!(serialized.contains("\"stop_name\":\"Châtelet\""));
        assert!(serialized.contains("\"mode\":\"metro\""));
    }

    #[test]
    fn test_transit_stop_deserialization() {
        let json_data = r#"{
            "id": "test_stop_002",
            "route_id": "route_456",
            "route_long_name": "RER A",
            "stop_name": "Gare de Lyon",
            "stop_lon": 2.3730,
            "stop_lat": 48.8447,
            "shortname": "GL",
            "municipality_name": "Paris",
            "insee_code": "75112",
            "mode": "rer"
        }"#;

        let stop: NewTransitStop = serde_json::from_str(json_data).expect("Failed to deserialize");

        assert_eq!(stop.id, "test_stop_002");
        assert_eq!(stop.route_long_name, "RER A");
        assert_eq!(stop.stop_name, "Gare de Lyon");
        assert_eq!(stop.mode, "rer");
        // Use approximate comparison for floating point values
        assert!((stop.stop_lon - 2.3730).abs() < f32::EPSILON);
        assert!((stop.stop_lat - 48.8447).abs() < f32::EPSILON);
    }

    #[test]
    fn test_transit_stop_coordinates_validation() {
        let stop = create_test_transit_stop();

        // Paris coordinates should be reasonable
        assert!(stop.stop_lon > 2.0 && stop.stop_lon < 3.0);
        assert!(stop.stop_lat > 48.0 && stop.stop_lat < 49.0);
    }

    #[test]
    fn test_transit_stop_clone() {
        let stop = create_test_transit_stop();
        let cloned_stop = stop.clone();

        assert_eq!(stop.id, cloned_stop.id);
        assert_eq!(stop.route_id, cloned_stop.route_id);
        assert_eq!(stop.stop_name, cloned_stop.stop_name);
    }
}
