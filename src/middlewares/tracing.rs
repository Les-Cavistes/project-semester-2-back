//! # Tracing Middleware
//!
//! This module provides HTTP request and response tracing middleware for observability
//! and debugging purposes. It logs incoming requests, outgoing responses, and any errors
//! that occur during request processing.
//!
//! ## Overview
//!
//! The tracing middleware provides comprehensive logging of HTTP interactions:
//! - Request logging with method, URI, and headers (configurable)
//! - Response logging with status codes and timing
//! - Error logging for failed requests
//! - Structured logging using the tracing framework
//!
//! ## Configuration
//!
//! Tracing behavior is controlled by the `RUST_LOG` environment variable:
//! - `RUST_LOG=info` - Standard request/response logging
//! - `RUST_LOG=debug` - Detailed debugging information
//! - `RUST_LOG=error` - Only error logging
//!
//! ## Usage
//!
//! ```norun
//! use axum::Router;
//! use your_crate::middlewares::tracing::create_tracing_layer;
//!
//! let tracing_layer = create_tracing_layer();
//! let app = Router::new()
//!     .layer(tracing_layer);
//! ```

use tower_http::trace::{
    DefaultMakeSpan, DefaultOnFailure, DefaultOnRequest, DefaultOnResponse, TraceLayer,
};
use tracing::Level;

/// Creates a tracing layer for HTTP request/response logging.
///
/// This function configures a comprehensive tracing layer that logs:
/// - Incoming HTTP requests with method and URI
/// - Outgoing HTTP responses with status codes and timing
/// - Failed requests with error details
///
/// # Configuration
///
/// The tracing layer is configured with the following settings:
/// - **Request logging**: INFO level, no headers included for privacy
/// - **Response logging**: INFO level, no headers included for privacy
/// - **Error logging**: ERROR level for failed requests
/// - **Span creation**: INFO level with request details
///
/// # Privacy Considerations
///
/// Headers are explicitly excluded from logging to prevent accidental
/// exposure of sensitive information like API keys, authentication tokens,
/// or personal data.
///
/// # Returns
///
/// * `TraceLayer` - A configured tracing layer ready to be applied to a router
///
/// # Examples
///
/// ```norun
/// use axum::Router;
/// use your_crate::middlewares::tracing::create_tracing_layer;
///
/// let app = Router::new()
///     .route("/api/health", axum::routing::get(health_check))
///     .layer(create_tracing_layer());
/// ```
///
/// # Log Output
///
/// The tracing layer will produce structured logs like:
///
/// ```text
/// 2024-01-15T10:30:00.123Z INFO HTTP request started method=GET uri=/api/health
/// 2024-01-15T10:30:00.125Z INFO HTTP request completed status=200 duration=2ms
/// ```
///
/// # Performance
///
/// The tracing layer adds minimal overhead to request processing and is
/// suitable for production use. Span creation and logging are optimized
/// for performance.
#[must_use]
pub fn create_tracing_layer(
) -> TraceLayer<tower_http::classify::SharedClassifier<tower_http::classify::ServerErrorsAsFailures>>
{
    TraceLayer::new_for_http()
        .make_span_with(
            DefaultMakeSpan::new()
                .level(Level::INFO)
                .include_headers(false), // Exclude headers for privacy/security
        )
        .on_response(
            DefaultOnResponse::new()
                .level(Level::INFO)
                .include_headers(false), // Exclude headers for privacy/security
        )
        .on_request(DefaultOnRequest::new().level(Level::INFO))
        .on_failure(DefaultOnFailure::new().level(Level::ERROR))
}
