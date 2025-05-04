use rocket::http::Status;
use rocket::serde::json::{json, Json, Value};

/// Represents a standardized API response
#[derive(Debug)]
pub struct ApiResponse {
    pub status: Status,
    pub json: Value,
}

impl ApiResponse {
    /// # `new`
    /// Creates a new `ApiResponse` with the given status and JSON value
    ///
    /// ## Arguments
    /// * `status` - The status code of the response
    /// * `json` - The JSON value to include in the response
    ///
    /// ## Returns
    /// * `Json<Value>` containing the response data
    #[must_use]
    pub fn base(status: Status, json: &Value) -> Json<Value> {
        Json(json!({
            "status": status.code,
            "success": status.class().is_success(),
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
    #[must_use]
    pub fn success(data: impl Into<Value>) -> Json<Value> {
        Self::base(Status::Ok, &data.into())
    }

    /// # `created`
    /// Creates a created response with optional data
    ///
    /// ## Arguments
    /// * `data` - The data to include in the response
    ///
    /// ## Returns
    /// * `Json<Value>` containing the response data
    #[must_use]
    pub fn created(data: impl Into<Value>) -> Json<Value> {
        Self::base(Status::Created, &data.into())
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
    #[must_use]
    pub fn error(status: Status, message: &str) -> Json<Value> {
        Json(json!({
            "status": status.code,
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
    #[must_use]
    pub fn bad_request(message: &str) -> Json<Value> {
        Self::error(Status::BadRequest, message)
    }

    /// # `not_found`
    /// Creates a not found error response
    ///
    /// ## Arguments
    /// * `message` - The error message
    ///
    /// ## Returns
    /// * `Json<Value>` containing the error response data
    #[must_use]
    pub fn not_found(message: &str) -> Json<Value> {
        Self::error(Status::NotFound, message)
    }

    /// # `internal_error`
    /// Creates an internal server error response
    ///
    /// ## Arguments
    /// * `message` - The error message
    ///
    /// ## Returns
    /// * `Json<Value>` containing the error response data
    #[must_use]
    pub fn internal_error(message: &str) -> Json<Value> {
        Self::error(Status::InternalServerError, message)
    }
}
