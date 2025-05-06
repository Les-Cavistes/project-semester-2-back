//! URL builder module that provides a fluent interface for constructing URLs with paths and query parameters.
//!
//! This module offers a builder pattern for creating URLs with support for:
//! - Adding path segments
//! - Managing query parameters
//! - URL-encoding special characters
//! - Handling trailing slashes
//!
//! All the `#[must_use]` attributes in this module ensure proper usage of the builder pattern.
//! Since each method returns a new URL instance with the requested modifications, ignoring
//! these return values would silently discard the changes. The attribute helps prevent
//! accidental misuse by warning when method returns are not used in the builder chain.
//!
//! # Examples
//!
//! ```
//! use back::url::{QueryParams, Url};
//!
//! // Basic URL construction
//! let url = Url::new("https://api.example.com")
//!     .add_path("v1")
//!     .add_path("users")
//!     .build();
//! assert_eq!(url, "https://api.example.com/v1/users");
//!
//! // URL with query parameters
//! let mut params = QueryParams::new();
//! params.insert("page".to_string(), "1".to_string());
//! params.insert("limit".to_string(), "10".to_string());
//!
//! let url = Url::new("https://api.example.com")
//!     .add_args(params)
//!     .build();
//! ```

use percent_encoding::{percent_encode, NON_ALPHANUMERIC};
use std::collections::HashMap;

/// Type alias for query parameters stored as key-value pairs.
pub type QueryParams = HashMap<String, String>;

/// A builder for constructing URLs with support for paths and query parameters.
///
/// The `Url` struct provides a fluent interface for building URLs piece by piece,
/// including support for adding path segments and query parameters.
#[derive(Debug, Clone)]
pub struct Url {
    /// The base URL without trailing slashes
    base: String,
    /// Collection of path segments
    paths: Vec<String>,
    /// Collection of query parameters
    query_params: QueryParams,
}

impl Url {
    /// Creates a new URL builder instance with the given base URL.
    ///
    /// The base URL will have any trailing slashes removed.
    ///
    /// # Arguments
    ///
    /// * `base` - The base URL string
    ///
    /// # Examples
    ///
    /// ```
    /// use back::url::Url;
    /// let url = Url::new("https://example.com/");
    /// assert_eq!(url.build(), "https://example.com");
    /// ```
    #[must_use]
    pub fn new(base: &str) -> Self {
        Url {
            base: base.trim_end_matches('/').to_string(),
            paths: Vec::new(),
            query_params: HashMap::new(),
        }
    }

    /// Adds multiple query parameters from a `HashMap`.
    ///
    /// If a parameter with the same key already exists, it will be overwritten.
    ///
    /// # Arguments
    ///
    /// * `args` - `HashMap` containing query parameters
    ///
    /// # Examples
    ///
    /// ```
    /// use back::url::{QueryParams, Url};
    ///
    /// let mut params = QueryParams::new();
    /// params.insert("key".to_string(), "value".to_string());
    /// let url = Url::new("https://example.com").add_args(params);
    /// ```
    #[must_use]
    pub fn add_args(mut self, args: QueryParams) -> Self {
        self.query_params.extend(args);
        self
    }

    /// Adds a single query parameter.
    ///
    /// If a parameter with the same key already exists, it will be overwritten.
    ///
    /// # Arguments
    ///
    /// * `key` - The parameter key
    /// * `value` - The parameter value
    ///
    /// # Examples
    ///
    /// ```
    /// use back::url::Url;
    ///
    /// let url = Url::new("https://example.com").add_query_param("key", "value");
    /// ```
    #[must_use]
    pub fn add_query_param(mut self, key: &str, value: &str) -> Self {
        self.query_params.insert(key.to_string(), value.to_string());
        self
    }

    /// Adds a path segment to the URL.
    ///
    /// The path segment will be:
    /// - Trimmed of leading/trailing slashes and whitespace
    /// - URL-encoded if it contains special characters
    /// - Ignored if empty after trimming
    ///
    /// # Arguments
    ///
    /// * `path` - The path segment to add
    ///
    /// # Examples
    ///
    /// ```
    /// use back::url::Url;
    ///
    /// let url = Url::new("https://example.com").add_path("api/v1");
    /// ```
    #[must_use]
    pub fn add_path(mut self, path: &str) -> Self {
        let cleaned = path.trim_matches('/').trim();
        if !cleaned.is_empty() {
            self.paths
                .push(percent_encode(cleaned.as_bytes(), NON_ALPHANUMERIC).to_string());
        }
        self
    }

    /// Builds the final URL string.
    ///
    /// The resulting URL will:
    /// - Combine all path segments with forward slashes
    /// - Add query parameters in alphabetical order
    /// - Properly encode special characters
    ///
    /// # Examples
    ///
    /// ```
    /// use back::url::Url;
    ///
    /// let url = Url::new("https://example.com")
    ///     .add_path("api")
    ///     .add_query_param("key", "value")
    ///     .build();
    /// ```
    #[must_use]
    pub fn build(&self) -> String {
        let mut url = self.base.clone();

        if !self.paths.is_empty() {
            url = format!("{}/{}", url, self.paths.join("/"));
        }

        if !self.query_params.is_empty() {
            let mut pairs: Vec<(&String, &String)> = self.query_params.iter().collect();
            pairs.sort_by(|(a, _), (b, _)| a.cmp(b));

            let query_string: Vec<String> = pairs.iter().map(|(k, v)| format!("{k}={v}")).collect();
            url = format!("{}?{}", url, query_string.join("&"));
        }

        url
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::collections::HashMap;

    #[test]
    fn test_basic_url() {
        let url = Url::new("https://www.google.com");
        assert_eq!(url.build(), "https://www.google.com");
    }

    #[test]
    fn test_single_query_param() {
        let mut params = HashMap::new();
        params.insert("q".to_string(), "rust".to_string());
        let url = Url::new("https://www.google.com").add_args(params);
        assert_eq!(url.build(), "https://www.google.com?q=rust");
    }

    #[test]
    fn test_multiple_query_params() {
        let mut params = HashMap::new();
        params.insert("q".to_string(), "rust".to_string());
        params.insert("lang".to_string(), "en".to_string());
        let url = Url::new("https://www.google.com").add_args(params);
        let built_url = url.build();
        assert!(
            built_url == "https://www.google.com?q=rust&lang=en"
                || built_url == "https://www.google.com?lang=en&q=rust"
        );
    }

    #[test]
    fn test_single_path() {
        let url = Url::new("https://www.google.com").add_path("search");
        assert_eq!(url.build(), "https://www.google.com/search");
    }

    #[test]
    fn test_multiple_paths() {
        let url = Url::new("https://www.google.com")
            .add_path("api")
            .add_path("v1")
            .add_path("users");
        assert_eq!(url.build(), "https://www.google.com/api/v1/users");
    }

    #[test]
    fn test_path_with_slashes() {
        let url = Url::new("https://www.google.com").add_path("/search/");
        assert_eq!(url.build(), "https://www.google.com/search");
    }

    #[test]
    fn test_empty_path() {
        let url = Url::new("https://www.google.com")
            .add_path("")
            .add_path("  ");
        assert_eq!(url.build(), "https://www.google.com");
    }

    #[test]
    fn test_base_url_with_trailing_slash() {
        let url = Url::new("https://www.google.com/").add_path("search");
        assert_eq!(url.build(), "https://www.google.com/search");
    }

    #[test]
    fn test_base_url_with_existing_path() {
        let url = Url::new("https://www.google.com/api").add_path("v1");
        assert_eq!(url.build(), "https://www.google.com/api/v1");
    }

    #[test]
    fn test_paths_and_query_params() {
        let url = Url::new("https://www.google.com")
            .add_path("search")
            .add_query_param("q", "rust")
            .add_query_param("lang", "en");
        assert_eq!(url.build(), "https://www.google.com/search?lang=en&q=rust");
    }

    #[test]
    fn test_path_with_special_chars() {
        let url = Url::new("https://www.google.com")
            .add_path("search spaces")
            .add_path("$pecial&chars");
        assert_eq!(
            url.build(),
            "https://www.google.com/search%20spaces/%24pecial%26chars"
        );
    }

    #[test]
    fn test_method_chaining() {
        let url = Url::new("https://www.google.com")
            .add_path("api")
            .add_path("v1")
            .add_query_param("key", "value")
            .add_path("users");
        assert_eq!(url.build(), "https://www.google.com/api/v1/users?key=value");
    }
}
