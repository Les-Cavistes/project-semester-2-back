use crate::{
    models::{NewTransitStop, TransitStop},
    DbConn, DEFAULT_PAGE, MAX_PER_PAGE,
};
use rocket::{
    get,
    http::Status,
    post,
    serde::json::{json, serde_json, Json},
};

/// # `create`
/// Handles POST requests to create a new transit_stop.
///
/// ## Arguments
/// * `transit_stop` - The transit_stop to create
/// * `conn` - Database connection
///
/// ## Returns
/// JSON response containing the created transit_stop or an error message
#[post("/", data = "<transit_stop>")]
pub async fn transit_stop_create(
    transit_stop: Json<NewTransitStop>,
    conn: DbConn,
) -> (Status, Json<serde_json::Value>) {
    match TransitStop::insert(transit_stop.into_inner(), &conn).await {
        Ok(transit_stop) => (
            Status::Created,
            Json(json!({
                "status": "success",
                "message": "Successfully created transit_stop",
                "transit_stop": transit_stop
            })),
        ),
        Err(e) => (
            Status::InternalServerError,
            Json(json!({
                "status": "error",
                "message": format!("Failed to create transit_stop: {}", e)
            })),
        ),
    }
}

/// # `search`
/// Handles GET requests to search for transit_stops.
///
/// ## Arguments
/// * `query` - The search query
/// * `page` - The page number
/// * `per_page` - The number of items per page
/// * `conn` - Database connection
///
/// ## Returns
/// JSON response containing the search results or an error message
#[get("/search?<query>&<page>&<per_page>")]
pub async fn transit_stop_search(
    query: Option<String>,
    page: Option<i64>,
    per_page: Option<i64>,
    conn: DbConn,
) -> (Status, Json<serde_json::Value>) {
    let query = query.unwrap_or_default();
    let page = page.map_or(DEFAULT_PAGE, |p| p.max(1));
    let per_page = per_page.map_or(MAX_PER_PAGE, |p| p.clamp(1, MAX_PER_PAGE));

    match TransitStop::search(query, page, per_page, &conn).await {
        Ok(transit_stops) => (
            Status::Ok,
            Json(json!({
                "status": "success",
                "message": "Successfully retrieved transit_stops",
                "transit_stops": transit_stops
            })),
        ),
        Err(e) => (
            Status::InternalServerError,
            Json(json!({
                "status": "error",
                "message": format!("Failed to retrieve transit_stops: {}", e)
            })),
        ),
    }
}
