use diesel::r2d2::{ConnectionManager, Pool};
use diesel::PgConnection;

/// Database connection pool type for `PostgreSQL` using r2d2
pub type DbPool = Pool<ConnectionManager<PgConnection>>;

pub type ProjectPooledConnection =
    diesel::r2d2::PooledConnection<ConnectionManager<diesel::PgConnection>>;

pub mod api_response;
pub mod config;
pub mod middlewares;
pub mod models;
pub mod paginated;
pub mod routes;
pub mod schema;
pub mod services;
pub mod url;
pub mod utils;

pub const MAX_PER_PAGE: i64 = 100; // Prevent excessive page sizes
pub const DEFAULT_PER_PAGE: i64 = 10;
pub const DEFAULT_PAGE: i64 = 1;
