# Backend of out project

## Development

CORS is configured for development with:
- Origin: http://localhost:5173
- Supported Methods: GET, POST, PUT, DELETE, OPTIONS
- Credentials support enabled

> [!IMPORTANT]
> Don't forget to set up the pre-commit hooks.

```
pip install pre-commit
pre-commit install
```

## Project Structure

```
back/src/
├── lib.rs           # Core database configuration and constants
├── main.rs          # Application entry point and server configuration
├── models/          # Data models and database operations
│   ├── mod.rs
│   └── transit_stop.rs
├── paginated.rs     # Custom pagination implementation
├── routes/          # API endpoints
│   ├── mod.rs
│   └── transit_stop.rs
└── schema.rs        # Database schema definitions
```

## Key Components

### Database Layer
- Uses Diesel ORM with SQLite
- Implements connection pooling via rocket_sync_db_pools
- Includes automated migration support
- Schema defined for transit stops with comprehensive fields

### API Endpoints
- `POST /transit_stop/` - Create new transit stop
- `GET /transit_stop/search` - Search transit stops with pagination
- Root endpoint for health checks
- CORS support for local development

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

#### Error Handling
- Consistent JSON response format
- Proper HTTP status codes
- Detailed error messages for debugging

## Configuration

Key constants:
- `MAX_PER_PAGE`: 100 (Maximum items per page)
- `DEFAULT_PER_PAGE`: 10 (Default items per page)
- `DEFAULT_PAGE`: 1 (Default page number)

## Dependencies

Major dependencies:
- Rocket: Web framework
- Diesel: ORM and query builder
- PostgreSQL: Database
- Serde: Serialization/Deserialization
