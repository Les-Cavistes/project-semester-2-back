use axum::{
    response::Json,
    routing::{get, post},
    Router,
};
use back::{
    api_response::ApiResponse,
    routes::{journey_get, transit_stop_create, transit_stop_get, transit_stop_search},
    DbPool,
};
use diesel::r2d2::{ConnectionManager, Pool};
use diesel::PgConnection;
use diesel_migrations::{embed_migrations, EmbeddedMigrations, MigrationHarness};
use dotenv::dotenv;
use serde_json::{json, Value};
use std::env;
use tower::ServiceBuilder;
use tower_http::cors::CorsLayer;

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
async fn root() -> Json<Value> {
    ApiResponse::success(json!({
        "message": "Hello, Axum!"
    }))
}

/// Creates and configures the Axum application.
/// Sets up database connection, runs migrations, configures CORS, and defines routes.
#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Load environment variables
    dotenv().ok();

    // Get database URL from environment or use default
    let database_url = env::var("DATABASE_URL").unwrap();

    // Create database connection pool
    let manager = ConnectionManager::<PgConnection>::new(database_url);
    let pool = Pool::builder().build(manager)?;

    // Run migrations
    run_migrations(&pool).await?;

    // Configure CORS
    let cors =
        CorsLayer::new().allow_origin("http://localhost:5173".parse::<axum::http::HeaderValue>()?);

    // Build our application with routes
    let app = Router::new()
        .route("/", get(root))
        .route("/transit_stop", get(transit_stop_get))
        .route("/transit_stop", post(transit_stop_create))
        .route("/transit_stop/search", get(transit_stop_search))
        .route("/journey", get(journey_get))
        .layer(ServiceBuilder::new().layer(cors))
        .with_state(pool);

    // Run the server
    let listener = tokio::net::TcpListener::bind("127.0.0.1:8000").await?;
    println!("Server running on http://127.0.0.1:8000");
    axum::serve(listener, app).await?;

    Ok(())
}
