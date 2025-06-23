use axum::{middleware, routing::get, Router};
use back::{
    api_response::{ApiResponse, ApiResult},
    middlewares::{auth_middleware, create_cors_layer, create_tracing_layer},
    routes::{journey_get, transit_stop_get, transit_stop_search},
    DbPool,
};
use diesel::r2d2::{ConnectionManager, Pool};
use diesel::PgConnection;
use diesel_migrations::{embed_migrations, EmbeddedMigrations, MigrationHarness};
use serde_json::json;
use std::env;
use tower::ServiceBuilder;
use tracing_subscriber::{layer::SubscriberExt, util::SubscriberInitExt, EnvFilter};

/// Runs database migrations on application startup.
/// This ensures the database schema is up to date before the application begins serving requests.
async fn run_migrations(pool: &DbPool) -> Result<(), Box<dyn std::error::Error>> {
    const MIGRATIONS: EmbeddedMigrations = embed_migrations!("migrations");

    let mut conn = pool.get()?;
    tokio::task::spawn_blocking(move || {
        conn.run_pending_migrations(MIGRATIONS)
            .expect("diesel migrations");
    })
    .await?;

    Ok(())
}

/// Handles GET requests to the root path ("/").
/// Serves as a simple health check endpoint.
async fn root() -> ApiResult {
    ApiResponse::success(json!({
        "message": "Hello, Axum!"
    }))
}

/// Creates and configures the Axum application.
/// Sets up database connection, runs migrations, configures CORS, and defines routes.
#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Load environment variables
    dotenvy::dotenv().ok();

    // Check if the required environment variables are set
    let trace_filter =
        env::var("RUST_LOG").expect("RUST_LOG environment variable is missing or invalid");

    // Initialize tracing
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

    // Create middleware layers
    let cors_layer = create_cors_layer().expect("Failed to create CORS layer");
    let tracing_layer = create_tracing_layer();

    // Create database connection pool
    let manager = ConnectionManager::<PgConnection>::new(database_url);
    let pool = Pool::builder().build(manager)?;

    // Run migrations
    run_migrations(&pool).await?;

    // Create router for public routes (no authentication required)
    let public_routes = Router::new().route("/", get(root));

    // Create router for protected routes (authentication required)
    let protected_routes = Router::new()
        .route("/transit_stop", get(transit_stop_get))
        .route("/transit_stop/search", get(transit_stop_search))
        .route("/journey", get(journey_get))
        .layer(middleware::from_fn(auth_middleware));

    // Build our application with routes
    let app = Router::new()
        .merge(public_routes)
        .merge(protected_routes)
        .layer(ServiceBuilder::new().layer(cors_layer))
        .layer(tracing_layer)
        .with_state(pool);

    // Run the server
    println!("Server running on {server_addr}");

    let listener = tokio::net::TcpListener::bind(&server_addr).await?;

    axum::serve(listener, app).await?;

    Ok(())
}
