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

use crate::{models::JourneyResponse, url::Url};

use reqwest::{header, Client};
use std::collections::HashMap;

/// A client wrapper for the RATP/Île-de-France Mobilités API.
///
/// This struct provides the base client configuration and authentication
/// for making requests to the RATP API endpoints.
///
/// # Fields
///
/// * `client` - The underlying HTTP client for making requests
/// * `base_url` - The base URL for all API endpoints
pub struct RatpClient {
    /// HTTP client instance from reqwest
    client: Client,
    /// Base URL for the API endpoints
    base_url: &'static str,
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
    /// 3. Initialize a new HTTP client with the auth header
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
        let api_key =
            std::env::var("RATP_API_KEY").expect("RATP_API_KEY environment variable is not set");

        let mut headers = header::HeaderMap::new();
        headers.insert(
            "apikey",
            header::HeaderValue::from_str(&api_key).expect("Invalid API key format"),
        );

        let client = Client::builder()
            .default_headers(headers)
            .build()
            .expect("Failed to build HTTP client");

        RatpClient {
            client,
            base_url: "https://prim.iledefrance-mobilites.fr/marketplace/v2",
        }
    }

    /// Fetches a journey from the RATP API.
    ///
    /// This method queries the RATP API to find journey options between two locations.
    ///
    /// # Parameters
    ///
    /// * `from` - The origin location identifier, which can be:
    ///   - Coordinates in format "lon;lat" (e.g. "2.3567;48.8569")
    ///   - Stop point ID in format "`stop_point:IDFM:XXXX`"
    ///   - Stop area ID in format "`stop_area:IDFM:XXXX`"
    ///   - Point of Interest ID in format "`poi:IDFM:XXXX`"
    /// * `to` - The destination location identifier, in the same format options as `from`
    ///
    /// # Returns
    ///
    /// Returns a `Result` containing either:
    /// * `JourneyResponse` - The successful journey data from the API
    /// * `reqwest::Error` - Any error that occurred during the HTTP request
    ///
    /// # Errors
    ///
    /// This function will return an error if:
    /// * The API request fails (connection issues, timeout, etc.)
    /// * The API returns an error status code
    /// * The response cannot be parsed into a `JourneyResponse`
    ///
    /// # Examples
    ///
    /// ```no_run
    /// use back::ratp::RatpClient;
    ///
    /// # async fn example() -> Result<(), reqwest::Error> {
    /// let client = RatpClient::new();
    /// let journey = client.fetch_journey(
    ///     "2.3565;48.8666".to_string(),  // 2 rue Conté coordinates
    ///     "2.2950;48.8738".to_string()   // Charles de Gaulle - Etoile coordinates
    /// ).await?;
    /// # Ok(())
    /// # }
    /// ```
    ///
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
            .add_args(params)
            .build();

        let response = self.client.get(&url).send().await?.error_for_status()?;

        response.json::<JourneyResponse>().await
    }
}
