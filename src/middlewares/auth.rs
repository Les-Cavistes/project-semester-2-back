//! # Authentication Middleware
//!
//! This module provides authentication middleware for the API, implementing API key-based
//! authentication for protecting endpoints.
//!
//! ## Overview
//!
//! The authentication system uses a simple API key mechanism where clients must provide
//! a valid `CAVISTS_API_KEY` header in their requests to access protected endpoints.
//!
//! ## Security
//!
//! - API key is validated against the `CAVISTS_API_KEY` environment variable
//! - Invalid or missing API keys result in 401 Unauthorized responses
//! - Server configuration errors (missing env var) result in 500 Internal Server Error
//!
//! ## Usage
//!
//! Apply this middleware to routes that require authentication:
//!
//! ```rust,norun,no_run
//! use axum::{middleware, Router, routing::get};
//! use your_crate::middlewares::auth_middleware;
//!
//! let protected_routes = Router::new()
//!     .route("/protected", get(handler))
//!     .layer(middleware::from_fn(auth_middleware));
//! ```

use axum::{
    extract::Request,
    http::{HeaderMap, StatusCode},
    middleware::Next,
    response::{IntoResponse, Response},
};
use std::env;

use crate::api_response::ApiResponse;

/// Authentication middleware that validates the `CAVISTS_API_KEY` header.
///
/// This middleware extracts the API key from the request headers and validates it
/// against the environment variable `CAVISTS_API_KEY`. If the key is valid, the
/// request proceeds to the next middleware/handler. Otherwise, an appropriate
/// error response is returned.
///
/// # Arguments
///
/// * `headers` - The HTTP headers from the incoming request
/// * `request` - The incoming HTTP request
/// * `next` - The next middleware or handler in the chain
///
/// # Returns
///
/// * `Response` - Either the response from the next handler (if authenticated)
///   or an error response (if authentication fails)
///
/// # Authentication Flow
///
/// 1. **Environment Variable Check**: Validates that `CAVISTS_API_KEY` is set
///    - If missing: Returns 500 Internal Server Error
///
/// 2. **Header Extraction**: Extracts `CAVISTS_API_KEY` from request headers
///    - If missing: Returns 401 Unauthorized with "Missing `CAVISTS_API_KEY` header"
///
/// 3. **Key Validation**: Compares provided key with expected key
///    - If invalid: Returns 401 Unauthorized with "Invalid API key"
///    - If valid: Proceeds to next handler
///
/// # Examples
///
/// ## Valid Request
/// ```http
/// GET /api/transit_stop HTTP/1.1
/// Host: localhost:3000
/// CAVISTS_API_KEY: your_secret_api_key_here
/// ```
///
/// ## Invalid Request (Missing Header)
/// ```http
/// GET /api/transit_stop HTTP/1.1
/// Host: localhost:3000
/// ```
/// Response: 401 Unauthorized with error message
///
/// ## Invalid Request (Wrong Key)
/// ```http
/// GET /api/transit_stop HTTP/1.1
/// Host: localhost:3000
/// CAVISTS_API_KEY: wrong_key
/// ```
/// Response: 401 Unauthorized with error message
///
/// # Error Responses
///
/// All error responses follow the standard API response format:
///
/// ```json
/// {
///   "error": {
///     "message": "Error description"
///   }
/// }
/// ```
///
/// # Environment Variables
///
/// * `CAVISTS_API_KEY` - The expected API key for authentication (required)
///
/// # Security Considerations
///
/// - Ensure `CAVISTS_API_KEY` is a strong, randomly generated key
/// - Use HTTPS in production to protect the API key in transit
/// - Regularly rotate the API key
/// - Consider implementing rate limiting for additional security
pub async fn auth_middleware(headers: HeaderMap, request: Request, next: Next) -> Response {
    dotenvy::dotenv().ok();

    // Get the expected API key from environment variables
    let Ok(expected_api_key) = env::var("CAVISTS_API_KEY") else {
        eprintln!("CAVISTS_API_KEY environment variable not found");

        let response = ApiResponse::error(
            StatusCode::INTERNAL_SERVER_ERROR,
            "Server configuration error",
        );

        return response.into_response();
    };

    // Extract the API key from the request headers
    let provided_api_key = headers
        .get("CAVISTS_API_KEY")
        .and_then(|header_value| header_value.to_str().ok());

    match provided_api_key {
        Some(key) if key == expected_api_key => {
            // API key is valid, proceed with the request
            next.run(request).await
        }
        Some(_) => {
            // API key is provided but invalid
            let response = ApiResponse::error(StatusCode::UNAUTHORIZED, "Invalid API key");

            response.into_response()
        }
        None => {
            // No API key provided
            let response =
                ApiResponse::error(StatusCode::UNAUTHORIZED, "Missing CAVISTS_API_KEY header");

            response.into_response()
        }
    }
}
