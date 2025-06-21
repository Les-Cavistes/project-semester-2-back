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

#[cfg(test)]
mod tests {
    use super::*;
    use serde_json::json;

    #[test]
    fn test_success_response() {
        let data = json!({"message": "Success"});
        let (status, Json(response)) = ApiResponse::success(data.clone());

        assert_eq!(status, StatusCode::OK);
        assert_eq!(response["data"], data);
        assert!(response["error"].is_null());
    }

    #[test]
    fn test_created_response() {
        let data = json!({"id": 123, "name": "test"});
        let (status, Json(response)) = ApiResponse::created(data.clone());

        assert_eq!(status, StatusCode::CREATED);
        assert_eq!(response["data"], data);
    }

    #[test]
    fn test_bad_request_error() {
        let message = "Invalid input";
        let (status, Json(response)) = ApiResponse::bad_request(message);

        assert_eq!(status, StatusCode::BAD_REQUEST);
        assert_eq!(response["error"]["message"], message);
        assert!(response["data"].is_null());
    }

    #[test]
    fn test_not_found_error() {
        let message = "Resource not found";
        let (status, Json(response)) = ApiResponse::not_found(message);

        assert_eq!(status, StatusCode::NOT_FOUND);
        assert_eq!(response["error"]["message"], message);
    }

    #[test]
    fn test_internal_server_error() {
        let message = "Internal server error";
        let (status, Json(response)) = ApiResponse::internal_error(message);

        assert_eq!(status, StatusCode::INTERNAL_SERVER_ERROR);
        assert_eq!(response["error"]["message"], message);
    }

    #[test]
    fn test_custom_error() {
        let message = "Custom error";
        let (status, Json(response)) = ApiResponse::error(StatusCode::UNAUTHORIZED, message);

        assert_eq!(status, StatusCode::UNAUTHORIZED);
        assert_eq!(response["error"]["message"], message);
    }

    #[test]
    fn test_base_response() {
        let data = json!({"key": "value"});
        let (status, Json(response)) = ApiResponse::base(StatusCode::ACCEPTED, &data);

        assert_eq!(status, StatusCode::ACCEPTED);
        assert_eq!(response["data"], data);
    }

    #[test]
    fn test_response_structure_consistency() {
        // Test success response structure
        let (_, Json(success_response)) = ApiResponse::success(json!({"test": true}));
        assert!(success_response.get("data").is_some());
        assert!(success_response.get("error").is_none() || success_response["error"].is_null());

        // Test error response structure
        let (_, Json(error_response)) = ApiResponse::bad_request("test error");
        assert!(error_response.get("error").is_some());
        assert!(error_response["error"].get("message").is_some());
        assert!(error_response.get("data").is_none() || error_response["data"].is_null());
    }

    #[test]
    fn test_empty_data_response() {
        let (status, Json(response)) = ApiResponse::success(json!({}));

        assert_eq!(status, StatusCode::OK);
        assert_eq!(response["data"], json!({}));
    }

    #[test]
    fn test_null_data_response() {
        let (status, Json(response)) = ApiResponse::success(Value::Null);

        assert_eq!(status, StatusCode::OK);
        assert!(response["data"].is_null());
    }

    #[test]
    fn test_array_data_response() {
        let data = json!([1, 2, 3]);
        let (status, Json(response)) = ApiResponse::success(data.clone());

        assert_eq!(status, StatusCode::OK);
        assert_eq!(response["data"], data);
    }

    #[test]
    fn test_string_data_response() {
        let data = "Hello, World!";
        let (status, Json(response)) = ApiResponse::success(data);

        assert_eq!(status, StatusCode::OK);
        assert_eq!(response["data"], json!(data));
    }

    #[test]
    fn test_numeric_data_response() {
        let data = 42;
        let (status, Json(response)) = ApiResponse::success(data);

        assert_eq!(status, StatusCode::OK);
        assert_eq!(response["data"], json!(data));
    }

    #[test]
    fn test_error_message_special_characters() {
        let message = "Error with special chars: !@#$%^&*()";
        let (status, Json(response)) = ApiResponse::bad_request(message);

        assert_eq!(status, StatusCode::BAD_REQUEST);
        assert_eq!(response["error"]["message"], message);
    }

    #[test]
    fn test_error_message_unicode() {
        let message = "Erreur avec des caractères unicode: éàü";
        let (status, Json(response)) = ApiResponse::internal_error(message);

        assert_eq!(status, StatusCode::INTERNAL_SERVER_ERROR);
        assert_eq!(response["error"]["message"], message);
    }
}
