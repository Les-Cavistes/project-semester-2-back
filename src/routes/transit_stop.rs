use crate::{
    api_response::{ApiResponse, ApiResult},
    models::TransitStop,
    paginated::set_pagination_defaults,
    utils::execute_blocking_db_operation,
    DbPool,
};
use axum::extract::{Query, State};
use serde::Deserialize;
use serde_json::json;

/// Query parameters for pagination
#[derive(Deserialize)]
pub struct PaginationQuery {
    page: Option<i64>,
    per_page: Option<i64>,
}

/// Handles GET requests to retrieve all `transit_stops`.
///
/// # Arguments
/// * `State(pool)` - Database connection pool
/// * `Query(params)` - Query parameters for pagination
///
/// # Returns
/// * `ApiResult` - The response containing the retrieved `transit_stops` or an error message
pub async fn transit_stop_get(
    State(pool): State<DbPool>,
    Query(params): Query<PaginationQuery>,
) -> ApiResult {
    let (page, per_page) = set_pagination_defaults(params.page, params.per_page);

    let result =
        execute_blocking_db_operation(pool, move |conn| TransitStop::all(page, per_page, conn))
            .await;

    match result {
        Ok(transit_stop) => ApiResponse::success(json!({
            "transit_stop": transit_stop
        })),
        Err(e) => ApiResponse::not_found(&format!("Failed to retrieve transit_stop: {e}")),
    }
}

/// Query parameters for search with pagination
#[derive(Deserialize)]
pub struct SearchQuery {
    query: Option<String>,
    page: Option<i64>,
    per_page: Option<i64>,
}

/// Handles GET requests to search for `transit_stops`.
///
/// # Arguments
/// * `State(pool)` - Database connection pool
/// * `Query(params)` - Query parameters for search and pagination
///
/// # Returns
/// * `ApiResult` - The response containing the search results or an error message
pub async fn transit_stop_search(
    State(pool): State<DbPool>,
    Query(params): Query<SearchQuery>,
) -> ApiResult {
    let query = params.query.unwrap_or_default();
    let (page, per_page) = set_pagination_defaults(params.page, params.per_page);

    let result = execute_blocking_db_operation(pool, move |conn| {
        TransitStop::search(&query, page, per_page, conn)
    })
    .await;

    match result {
        Ok(transit_stops) => ApiResponse::success(json!({
            "transit_stops": transit_stops
        })),
        Err(e) => ApiResponse::internal_error(&format!("Failed to retrieve transit_stops: {e}")),
    }
}
