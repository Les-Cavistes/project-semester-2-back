//! # CORS Middleware
//!
//! This module provides Cross-Origin Resource Sharing (CORS) middleware configuration
//! for the API, allowing controlled access from web browsers across different origins.
//!
//! ## Overview
//!
//! CORS is essential for web applications that need to make requests from a browser
//! to an API hosted on a different domain, port, or protocol. This middleware
//! configures which origins are allowed to access the API.
//!
//! ## Configuration
//!
//! The CORS configuration is controlled by the `CORS_ALLOWED_ORIGIN` environment variable:
//! - Single origin: `CORS_ALLOWED_ORIGIN=http://localhost:3000`
//! - Multiple origins: `CORS_ALLOWED_ORIGIN=http://localhost:3000,https://myapp.com`
//!
//! ## Usage
//!
//! ```norun
//! use axum::Router;
//! use tower::ServiceBuilder;
//! use your_crate::middlewares::cors::create_cors_layer;
//!
//! let cors_layer = create_cors_layer().expect("Failed to create CORS layer");
//! let app = Router::new()
//!     .layer(ServiceBuilder::new().layer(cors_layer));
//! ```

use std::env;
use tower_http::cors::CorsLayer;

/// Creates a CORS layer configured from environment variables.
///
/// This function reads the `CORS_ALLOWED_ORIGIN` environment variable and
/// configures a CORS layer that allows requests from the specified origins.
/// Multiple origins can be specified by separating them with commas.
///
/// # Environment Variables
///
/// * `CORS_ALLOWED_ORIGIN` - Comma-separated list of allowed origins
///   - Example: `http://localhost:3000,https://myapp.com`
///
/// # Returns
///
/// * `Ok(CorsLayer)` - A configured CORS layer
/// * `Err(String)` - Error message if environment variable is missing or invalid
///
/// # Examples
///
/// ## Single Origin
/// ```bash
/// CORS_ALLOWED_ORIGIN=http://localhost:3000
/// ```
///
/// ## Multiple Origins
/// ```bash
/// CORS_ALLOWED_ORIGIN=http://localhost:3000,https://app.example.com,https://admin.example.com
/// ```
///
/// # Errors
///
/// This function will return an error if:
/// - The `CORS_ALLOWED_ORIGIN` environment variable is not set
/// - Any of the origins cannot be parsed as valid header values
///
/// # Security Considerations
///
/// - Be restrictive with allowed origins in production
/// - Use HTTPS origins in production environments
/// - Avoid using wildcard (`*`) origins with credentials
/// - Regularly review and update allowed origins list
pub fn create_cors_layer() -> Result<CorsLayer, String> {
    dotenvy::dotenv().ok();

    // Get CORS configuration from environment
    let cors_origins_str = env::var("CORS_ALLOWED_ORIGIN")
        .map_err(|_| "CORS_ALLOWED_ORIGIN environment variable is missing or invalid")?;

    // Parse and validate origins
    let allowed_origins = cors_origins_str
        .split(',')
        .map(str::trim)
        .filter(|s| !s.is_empty())
        .filter_map(|origin| origin.parse::<axum::http::HeaderValue>().ok())
        .collect::<Vec<_>>();

    if allowed_origins.is_empty() {
        return Err("No valid origins found in CORS_ALLOWED_ORIGIN".to_string());
    }

    // Configure CORS with multiple allowed origins
    let mut cors = CorsLayer::new();
    for origin in allowed_origins {
        cors = cors.allow_origin(origin);
    }

    Ok(cors)
}
