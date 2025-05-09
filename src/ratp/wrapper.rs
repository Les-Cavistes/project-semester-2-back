//! RATP API client wrapper for accessing Île-de-France Mobilités transport data.
//!
//! This module provides a client wrapper for interacting with the RATP/Île-de-France Mobilités API,
//! which offers access to Paris region public transportation data. The client handles authentication
//! and provides a clean interface for making API requests.
//!
//! # Environment Setup
//!
//! The client requires an API key stored in the environment variable `RATP_API_KEY`.
//! You can set this up either:
//! - In a `.env` file in your project root
//! - Directly in your environment variables
//!
//! ```text
//! # .env file example
//! RATP_API_KEY=your_api_key_here
//! ```
//!
//! # Examples
//!
//! ```no_run
//! use back::ratp::RatpClient;
//!
//! // Initialize the client
//! let client = RatpClient::new();
//! ```
//!
//! # Panics
//!
//! The client will panic if the `RATP_API_KEY` environment variable is not set.
//!
//! # Dependencies
//!
//! - `dotenv`: For loading environment variables from `.env` file
//! - `reqwest`: For making HTTP requests

use std::collections::HashMap;

use dotenv::dotenv;
use reqwest::Client;

use crate::{models::JourneyResponse, url::Url};

/// A client wrapper for the RATP/Île-de-France Mobilités API.
///
/// This struct provides the base client configuration and authentication
/// for making requests to the RATP API endpoints.
///
/// # Fields
///
/// * `client` - The underlying HTTP client for making requests
/// * `base_url` - The base URL for all API endpoints
/// * `api_key` - The authentication key for API access
#[allow(dead_code)] // TODO: REMOVE WHEN IMPLEMENTED.
pub struct RatpClient {
    /// HTTP client instance from reqwest
    client: Client,
    /// Base URL for the API endpoints
    base_url: &'static str,
    /// API key for authentication
    api_key: String,
}

impl Default for RatpClient {
    fn default() -> Self {
        Self::new()
    }
}

impl RatpClient {
    /// Creates a new instance of the RATP API client.
    ///
    /// This constructor will:
    /// 1. Load environment variables from the `.env` file if present
    /// 2. Retrieve the RATP API key from environment variables
    /// 3. Initialize a new HTTP client
    ///
    /// # Panics
    ///
    /// This method will panic if the `RATP_API_KEY` environment variable is not set.
    ///
    /// # Examples
    ///
    /// ```no_run
    /// use back::ratp::RatpClient;
    ///
    /// // Make sure RATP_API_KEY is set in your environment
    /// let client = RatpClient::new();
    /// ```
    #[must_use]
    pub fn new() -> Self {
        dotenv().ok();

        let api_key =
            std::env::var("RATP_API_KEY").expect("RATP_API_KEY environment variable is not set");

        RatpClient {
            client: Client::new(),
            base_url: "https://prim.iledefrance-mobilites.fr/marketplace/v2",
            api_key,
        }
    }

    pub async fn fetch_journey(
        &self,
        from: String,
        to: String,
    ) -> Result<JourneyResponse, reqwest::Error> {
        let mut params: HashMap<String, String> = HashMap::new();
        params.insert("from".to_string(), from);
        params.insert("to".to_string(), to);
        let url = Url::new(self.base_url)
            .add_path("navitia")
            .add_path("journeys")
            .add_args(params);
        let url = url.build();
        let response = self
            .client
            .get(&url)
            .header("apikey", &self.api_key)
            .send()
            .await?
            .error_for_status()?;
        response.json::<JourneyResponse>().await
    }
}
