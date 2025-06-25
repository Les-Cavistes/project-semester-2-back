# Backend of our project

## Development

CORS is configured for development with:
- Origin: http://localhost:5173, http://localhost:3000
- Supported Methods: GET, POST, PUT, DELETE, OPTIONS
- Credentials support enabled

> [!IMPORTANT]
> Don't forget to set up the pre-commit hooks.

```bash
cargo install hooksmith
hooksmith install
```

## Project Structure

```
back/src/
├── api_response.rs  # Standardized API response handling
├── lib.rs          # Core database configuration and constants
├── main.rs         # Application entry point and server configuration
├── middlewares/    # HTTP middleware components
│   ├── auth.rs     # API key authentication middleware
│   ├── cors.rs     # Cross-Origin Resource Sharing configuration
│   ├── tracing.rs  # HTTP request/response logging
│   └── mod.rs
├── models/         # Data models and database operations
│   ├── journey.rs  # Journey-related models
│   ├── mod.rs
│   └── transit_stop.rs
├── paginated.rs    # Custom pagination implementation
├── routes/         # API endpoints
│   ├── journey.rs
│   ├── mod.rs
│   └── transit_stop.rs
├── schema.rs       # Database schema definitions
├── services/       # External service integrations
│   └── ratp/      # RATP API client wrapper
│       ├── mod.rs
│       └── wrapper.rs
└── url.rs         # URL builder for API requests
```

## Key Components

### Application State
- Uses `AppState` struct to manage shared resources efficiently
- Implements thread-safe sharing of database pool and RATP client
- Optimizes resource utilization through smart pointer (`Arc`) implementation
- Ensures efficient request handling without redundant client creation

### Database Layer
- Uses Diesel ORM with PostgreSQL
- Implements connection pooling via r2d2
- Includes automated migration support on startup
- Schema defined for transit stops with comprehensive fields
- Helper utilities for async database operations

### Configuration Management
- Configuration logic centralized in `config.rs`
- Structured initialization process for database migrations and server setup
- Clean separation of configuration concerns from application logic

### Middleware Architecture
The application uses a layered middleware approach with Axum:
- **Tracing Middleware**: HTTP request/response logging for observability
- **CORS Middleware**: Cross-origin resource sharing configuration
- **Authentication Middleware**: API key validation (applied selectively to protected routes)

### API Endpoints
- `GET /` - Root endpoint for health checks (public, no authentication required)
- `GET /transit_stop` - Get all transit stops with pagination (requires authentication)
- `GET /transit_stop/search` - Search transit stops with pagination (requires authentication)
- `GET /journey` - Get journey information between two points (requires authentication)

#### Authentication
All protected API endpoints require authentication via the `CAVISTES_API_KEY` header. Include this header in your requests:

```
CAVISTES_API_KEY: your_api_key_here
```

Authentication failures return:
- `401 Unauthorized` - Missing or invalid API key
- `500 Internal Server Error` - Server configuration error
- `POST /transit_stop` - Create new transit stop (requires authentication)
- `GET /transit_stop` - Get all transit stops with pagination (requires authentication)
- `GET /transit_stop/search` - Search transit stops with pagination (requires authentication)
- `GET /journey` - Get journey information between two points (requires authentication)
- `GET /` - Root endpoint for health checks (public, no authentication required)
- CORS support for local development

#### Authentication
All API endpoints require authentication via the `CAVISTES_API_KEY` header, except for the root health check endpoint (`/`). Include this header in your requests:

```
CAVISTES_API_KEY: your_api_key_here
```

Authentication failures return:
- `401 Unauthorized` - Missing or invalid API key
- `500 Internal Server Error` - Server configuration error

### Response Format

All API responses follow a consistent format:

For successful responses (2xx):
```json5
{
  "data": {
    // Response data here
  }
}
```

For error responses (4xx, 5xx):
```json5
{
  "error": {
    "message": "Error description"
  }
}
```

HTTP status codes are used appropriately:
- 200: Successful GET/Search operations
- 201: Successful resource creation
- 400: Bad request (invalid input)
- 404: Resource not found
- 500: Internal server error

### Complex Features

#### Custom Pagination
The `paginated.rs` implements a sophisticated pagination system:
- Custom trait implementation for Diesel queries
- Supports dynamic page size control
- Returns total count alongside results
- Prevents excessive page sizes with configurable limits

#### Search Functionality
Transit stop search supports:
- Multi-field searching (stop_name, route_long_name, shortname)
- Fuzzy matching with SQL LIKE
- Paginated results
- Proper error handling

#### Journey Planning
- Integration with RATP/Île-de-France Mobilités API
- Support for coordinates-based routing
- Detailed journey information including:
  - Multiple route options
  - Step-by-step navigation
  - Geolocation data
  - Timing information

#### Database Utilities
The `utils.rs` module provides:
- Async database operation helpers
- Connection pool management
- Error handling for blocking database operations

## Configuration

Key constants:
- `MAX_PER_PAGE`: 100 (Maximum items per page)
- `DEFAULT_PER_PAGE`: 10 (Default items per page)
- `DEFAULT_PAGE`: 1 (Default page number)

Environment variables (see `.env.example`):
- `DATABASE_URL`: PostgreSQL connection string
- `SERVER_HOST`: Server host address (default: "127.0.0.1")
- `SERVER_PORT`: Server port number (default: "8000")
- `CORS_ALLOWED_ORIGIN`: Comma-separated list of allowed origins
- `RATP_API_KEY`: API key for RATP services
- `CAVISTES_API_KEY`: API key for authenticating requests to protected endpoints
- `RUST_LOG`: Logging level configuration (example: "back=info,tower_http=info")

Copy `.env.example` to `.env` and update the values as needed for your environment.

Copy `env.example` to `.env` and update the values as needed for your environment.

## Dependencies

Major dependencies:
- **Axum**: Modern web framework (v0.7)
- **Diesel**: ORM and query builder (v2.2.10)
- **PostgreSQL**: Database
- **Serde**: Serialization/Deserialization (v1.0.219)
- **Tower**: Middleware support (v0.4)
- **Tokio**: Async runtime (v1.45)
- **Reqwest**: HTTP client for external API calls (v0.12.20)
- **Tracing**: Structured logging and observability

## Getting Started

1. Install Rust and Cargo
2. Install PostgreSQL and create a database
3. Copy `.env.example` to `.env` and configure your environment variables
4. Install pre-commit hooks: `cargo install hooksmith && hooksmith install`
5. Run the application: `cargo run`

The server will automatically run database migrations on startup and be available at the configured host and port.
