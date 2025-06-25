use diesel::r2d2::{ConnectionManager, Pool};
use diesel::PgConnection;
use diesel_migrations::{embed_migrations, EmbeddedMigrations, MigrationHarness};
use std::env;
use tracing_subscriber::{layer::SubscriberExt, util::SubscriberInitExt, EnvFilter};

use crate::{services::ratp::RatpClient, DbPool};

/// Application state containing shared resources
#[derive(Clone)]
pub struct AppState {
    /// Database connection pool
    pub db: DbPool,
    /// RATP API client
    pub ratp_client: RatpClient,
}

/// Runs database migrations on application startup.
/// This ensures the database schema is up to date before the application begins serving requests.
///
/// # Arguments
/// * `pool` - The database connection pool
///
/// # Returns
/// * `Ok(())` if migrations were successful
/// * `Err(Box<dyn std::error::Error>)` if migrations failed
///
/// # Errors
/// This function will return an error if:
/// * Failed to get a connection from the pool
/// * Failed to run migrations
/// * Failed to spawn blocking task
///
/// # Panics
/// This function will panic if:
/// * Diesel migrations fail to run (via `expect` call)
pub async fn run_migrations(pool: &DbPool) -> Result<(), Box<dyn std::error::Error>> {
    const MIGRATIONS: EmbeddedMigrations = embed_migrations!("migrations");

    let mut conn = pool.get()?;
    tokio::task::spawn_blocking(move || {
        conn.run_pending_migrations(MIGRATIONS)
            .expect("diesel migrations");
    })
    .await?;

    Ok(())
}

/// Initializes the application configuration.
/// This includes setting up environment variables, tracing, database connection, and server configuration.
///
/// # Returns
/// * `Ok((AppState, String))` - A tuple containing the application state and server address
/// * `Err(Box<dyn std::error::Error>)` if initialization failed
///
/// # Errors
/// This function will return an error if:
/// * Failed to build database connection pool
/// * Failed to connect to database
///
/// # Panics
/// This function will panic if any of these environment variables are missing or invalid:
/// * `DATABASE_URL`
/// * `SERVER_HOST`
/// * `SERVER_PORT`
/// * `RATP_API_KEY`
pub fn initialize_config() -> Result<(AppState, String), Box<dyn std::error::Error>> {
    // Load environment variables
    dotenvy::dotenv().ok();

    // Initialize tracing
    let trace_filter = env::var("RUST_LOG").unwrap_or_else(|_| "info".to_string());
    tracing_subscriber::registry()
        .with(EnvFilter::new(trace_filter))
        .with(tracing_subscriber::fmt::layer())
        .init();

    // Get database URL from environment or use default
    let database_url =
        env::var("DATABASE_URL").expect("DATABASE_URL environment variable is missing or invalid");

    // Get server configuration from environment or use defaults
    let server_host =
        env::var("SERVER_HOST").expect("SERVER_HOST environment variable is missing or invalid");
    let server_port =
        env::var("SERVER_PORT").expect("SERVER_PORT environment variable is missing or invalid");
    let server_addr = format!("{server_host}:{server_port}");

    // Create database connection pool
    let manager = ConnectionManager::<PgConnection>::new(database_url);
    let db = Pool::builder().build(manager)?;

    // Create RATP client
    let ratp_client = RatpClient::new();

    let state = AppState { db, ratp_client };

    Ok((state, server_addr))
}
