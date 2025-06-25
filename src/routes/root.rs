use crate::api_response::{ApiResponse, ApiResult};
use serde_json::json;

/// Handles GET requests to the root path ("/").
/// Serves as a simple health check endpoint.
#[allow(clippy::unused_async)] // Axum requires async handlers
pub async fn root() -> ApiResult {
    ApiResponse::success(json!({
        "message": "Hello, Axum!"
    }))
}
