use crate::{
    api_response::ApiResponse,
    models::{NewTransitStop, TransitStop},
    paginated::set_pagination_defaults,
    DbPool,
};
use axum::{
    extract::{Query, State},
    http::StatusCode,
    response::Json,
};
use serde::Deserialize;
use serde_json::{json, Value};

/// Handles POST requests to create a new `transit_stop`.
///
/// # Arguments
/// * `State(pool)` - Database connection pool
/// * `Json(transit_stop)` - The `transit_stop` to create
///
/// # Panics
/// * This function panics if the spawned blocking task fails to complete.
///
/// # Returns
/// * `(StatusCode, Json<Value>)` - The status code and JSON response containing the created `transit_stop` or an error message
pub async fn transit_stop_create(
    State(pool): State<DbPool>,
    Json(transit_stop): Json<NewTransitStop>,
) -> (StatusCode, Json<Value>) {
    let result = {
        let pool = pool.clone();

        tokio::task::spawn_blocking(move || {
            let mut conn = pool.get().map_err(|e| {
                diesel::result::Error::DatabaseError(
                    diesel::result::DatabaseErrorKind::Unknown,
                    Box::new(e.to_string()),
                )
            })?;
            TransitStop::insert(&transit_stop, &mut conn)
        })
        .await
        .unwrap()
    };

    match result {
        Ok(transit_stop) => (
            StatusCode::CREATED,
            Json(json!({
                "message": "Successfully created transit_stop",
                "transit_stop": transit_stop
            })),
        ),
        Err(e) => (
            StatusCode::INTERNAL_SERVER_ERROR,
            Json(json!({
                "message": format!("Failed to create transit_stop: {e}")
            })),
        ),
    }
}

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
/// # Panics
/// * This function panics if the spawned blocking task fails to complete.
///
/// # Returns
/// * `Json<Value>` - JSON response containing the retrieved `transit_stops` or an error message
pub async fn transit_stop_get(
    State(pool): State<DbPool>,
    Query(params): Query<PaginationQuery>,
) -> Json<Value> {
    let (page, per_page) = set_pagination_defaults(params.page, params.per_page);

    let result = {
        let pool = pool.clone();

        tokio::task::spawn_blocking(move || {
            let mut conn = pool.get().map_err(|e| {
                diesel::result::Error::DatabaseError(
                    diesel::result::DatabaseErrorKind::Unknown,
                    Box::new(e.to_string()),
                )
            })?;

            TransitStop::all(page, per_page, &mut conn)
        })
        .await
        .unwrap()
    };

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
/// # Panics
/// * This function panics if the spawned blocking task fails to complete.
///
/// # Returns
/// * `Json<Value>` - JSON response containing the search results or an error message
pub async fn transit_stop_search(
    State(pool): State<DbPool>,
    Query(params): Query<SearchQuery>,
) -> Json<Value> {
    let query = params.query.unwrap_or_default();
    let (page, per_page) = set_pagination_defaults(params.page, params.per_page);

    let result = {
        let pool = pool.clone();

        tokio::task::spawn_blocking(move || {
            let mut conn = pool.get().map_err(|e| {
                diesel::result::Error::DatabaseError(
                    diesel::result::DatabaseErrorKind::Unknown,
                    Box::new(e.to_string()),
                )
            })?;

            TransitStop::search(&query, page, per_page, &mut conn)
        })
        .await
        .unwrap()
    };

    match result {
        Ok(transit_stops) => ApiResponse::success(json!({
            "transit_stops": transit_stops
        })),
        Err(e) => ApiResponse::internal_error(&format!("Failed to retrieve transit_stops: {e}")),
    }
}
