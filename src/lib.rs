/// # Database Connection Pool
/// Provides a SQLite connection pool using rocket_sync_db_pools.
/// This struct is used throughout the application to interact with the database.
#[rocket_sync_db_pools::database("sqlite_database")]
pub struct DbConn(diesel::SqliteConnection);

pub mod api_response;
pub mod models;
pub mod paginated;
pub mod routes;
pub mod schema;

pub const MAX_PER_PAGE: i64 = 100; // Prevent excessive page sizes
pub const DEFAULT_PER_PAGE: i64 = 10;
pub const DEFAULT_PAGE: i64 = 1;
