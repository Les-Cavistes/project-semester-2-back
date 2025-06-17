use axum::{http::StatusCode, response::Json};
use serde_json::{json, Value};

/// Represents a standardized API response
#[derive(Debug)]
pub struct ApiResponse {
    pub status: StatusCode,
    pub json: Value,
}

impl ApiResponse {
    /// # `base`
    /// Creates a new `ApiResponse` with the given status and JSON value
    ///
    /// ## Arguments
    /// * `status` - The status code of the response
    /// * `json` - The JSON value to include in the response
    ///
    /// ## Returns
    /// * `Json<Value>` containing the response data
    pub fn base(status: StatusCode, json: &Value) -> Json<Value> {
        Json(json!({
            "status": status.as_u16(),
            "success": status.is_success(),
            "data": json
        }))
    }

    /// # `success`
    /// Creates a success response with optional data
    ///
    /// ## Arguments
    /// * `data` - The data to include in the response
    ///
    /// ## Returns
    /// * `Json<Value>` containing the response data
    pub fn success(data: impl Into<Value>) -> Json<Value> {
        Self::base(StatusCode::OK, &data.into())
    }

    /// # `created`
    /// Creates a created response with optional data
    ///
    /// ## Arguments
    /// * `data` - The data to include in the response
    ///
    /// ## Returns
    /// * `Json<Value>` containing the response data
    pub fn created(data: impl Into<Value>) -> Json<Value> {
        Self::base(StatusCode::CREATED, &data.into())
    }

    /// # `error`
    /// Creates an error response with a message
    ///
    /// ## Arguments
    /// * `status` - The status code of the error
    /// * `message` - The error message
    ///
    /// ## Returns
    /// * `Json<Value>` containing the error response data
    pub fn error(status: StatusCode, message: &str) -> Json<Value> {
        Json(json!({
            "status": status.as_u16(),
            "success": false,
            "error": {
                "message": message
            }
        }))
    }

    /// # `bad_request`
    /// Creates a bad request error response
    ///
    /// ## Arguments
    /// * `message` - The error message
    ///
    /// ## Returns
    /// * `Json<Value>` containing the error response data
    pub fn bad_request(message: &str) -> Json<Value> {
        Self::error(StatusCode::BAD_REQUEST, message)
    }

    /// # `not_found`
    /// Creates a not found error response
    ///
    /// ## Arguments
    /// * `message` - The error message
    ///
    /// ## Returns
    /// * `Json<Value>` containing the error response data
    pub fn not_found(message: &str) -> Json<Value> {
        Self::error(StatusCode::NOT_FOUND, message)
    }

    /// # `internal_error`
    /// Creates an internal server error response
    ///
    /// ## Arguments
    /// * `message` - The error message
    ///
    /// ## Returns
    /// * `Json<Value>` containing the error response data
    pub fn internal_error(message: &str) -> Json<Value> {
        Self::error(StatusCode::INTERNAL_SERVER_ERROR, message)
    }
}
