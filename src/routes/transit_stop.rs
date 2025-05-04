use crate::{
    api_response::ApiResponse,
    models::{NewTransitStop, TransitStop},
    paginated::set_pagination_defaults,
    DbConn,
};
use rocket::{
    get,
    http::Status,
    post,
    serde::json::{json, serde_json, Json},
};
use serde_json::Value;

/// Handles POST requests to create a new transit_stop.
///
/// # Arguments
/// * `transit_stop` - The transit_stop to create
/// * `conn` - Database connection
///
/// # Returns
/// * `(Status, Json<serde_json::Value>)` - The `Status` and JSON response containing the created transit_stop or an error message
#[post("/", data = "<transit_stop>")]
pub async fn transit_stop_create(
    transit_stop: Json<NewTransitStop>,
    conn: DbConn,
) -> (Status, Json<serde_json::Value>) {
    match TransitStop::insert(transit_stop.into_inner(), &conn).await {
        Ok(transit_stop) => (
            Status::Created,
            Json(json!({
                "message": "Successfully created transit_stop",
                "transit_stop": transit_stop
            })),
        ),
        Err(e) => (
            Status::InternalServerError,
            Json(json!({
                "message": format!("Failed to create transit_stop: {e}")
            })),
        ),
    }
}

/// Handles GET requests to retrieve all transit_stops.
///
/// # Arguments
/// * `page` - The page number
/// * `per_page` - The number of items per page
/// * `conn` - Database connection
///
/// # Returns
/// * `(Status, Json<serde_json::Value>)` - The status and JSON response containing the retrieved transit_stops or an error message
#[get("/?<page>&<per_page>")]
pub async fn transit_stop_get(
    page: Option<i64>,
    per_page: Option<i64>,
    conn: DbConn,
) -> Json<Value> {
    let (page, per_page) = set_pagination_defaults(page, per_page);

    match TransitStop::all(page, per_page, &conn).await {
        Ok(transit_stop) => ApiResponse::success(json!({
            "transit_stop": transit_stop
        })),
        Err(e) => ApiResponse::not_found(&format!("Failed to retrieve transit_stop: {e}")),
    }
}

/// Handles GET requests to search for transit_stops.
///
/// # Arguments
/// * `query` - The search query
/// * `page` - The page number
/// * `per_page` - The number of items per page
/// * `conn` - Database connection
///
/// # Returns
/// * `(Status, Json<serde_json::Value>)` - The status and JSON response containing the search results or an error message
#[get("/search?<query>&<page>&<per_page>")]
pub async fn transit_stop_search(
    query: Option<String>,
    page: Option<i64>,
    per_page: Option<i64>,
    conn: DbConn,
) -> Json<Value> {
    let query = query.unwrap_or_default();
    let (page, per_page) = set_pagination_defaults(page, per_page);

    match TransitStop::search(query, page, per_page, &conn).await {
        Ok(transit_stops) => ApiResponse::success(json!({
            "transit_stops": transit_stops
        })),
        Err(e) => ApiResponse::internal_error(&format!("Failed to retrieve transit_stops: {e}")),
    }
}
