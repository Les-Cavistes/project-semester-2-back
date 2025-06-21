use axum::{http::StatusCode, response::Json};
use serde_json::{json, Value};

/// Type alias for our standard API response
pub type ApiResult = (StatusCode, Json<Value>);

/// Represents a standardized API response
#[derive(Debug)]
pub struct ApiResponse;

impl ApiResponse {
    /// Creates a new `ApiResponse` with the given status and JSON value.
    ///
    /// # Arguments
    /// * `status` - The status code of the response
    /// * `json` - The JSON value to include in the response
    ///
    /// # Returns
    /// * `ApiResult` containing the response data
    pub fn base(status: StatusCode, json: &Value) -> ApiResult {
        (
            status,
            Json(json!({
                "data": json
            })),
        )
    }

    /// Creates a success response with optional data.
    ///
    /// # Arguments
    /// * `data` - The data to include in the response
    ///
    /// # Returns
    /// * `ApiResult` containing the response data
    pub fn success(data: impl Into<Value>) -> ApiResult {
        Self::base(StatusCode::OK, &data.into())
    }

    /// Creates a created response with optional data.
    ///
    /// # Arguments
    /// * `data` - The data to include in the response
    ///
    /// # Returns
    /// * `ApiResult` containing the response data
    pub fn created(data: impl Into<Value>) -> ApiResult {
        Self::base(StatusCode::CREATED, &data.into())
    }

    /// Creates an error response with a message.
    ///
    /// # Arguments
    /// * `status` - The status code of the error
    /// * `message` - The error message
    ///
    /// # Returns
    /// * `ApiResult` containing the error response data
    pub fn error(status: StatusCode, message: &str) -> ApiResult {
        (
            status,
            Json(json!({
                "error": {
                    "message": message
                }
            })),
        )
    }

    /// Creates a bad request error response.
    ///
    /// # Arguments
    /// * `message` - The error message
    ///
    /// # Returns
    /// * `ApiResult` containing the error response data
    pub fn bad_request(message: &str) -> ApiResult {
        Self::error(StatusCode::BAD_REQUEST, message)
    }

    /// Creates a not found error response.
    ///
    /// # Arguments
    /// * `message` - The error message
    ///
    /// # Returns
    /// * `ApiResult` containing the error response data
    pub fn not_found(message: &str) -> ApiResult {
        Self::error(StatusCode::NOT_FOUND, message)
    }

    /// Creates an internal server error response.
    ///
    /// # Arguments
    /// * `message` - The error message
    ///
    /// # Returns
    /// * `ApiResult` containing the error response data
    pub fn internal_error(message: &str) -> ApiResult {
        Self::error(StatusCode::INTERNAL_SERVER_ERROR, message)
    }
}
