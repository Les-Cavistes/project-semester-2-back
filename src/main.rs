use axum::{middleware, routing::get, Router};
use back::config::run_migrations;
use back::routes::{root, transit_stop_routes};
use back::{
    config::initialize_config,
    middlewares::{auth_middleware, create_cors_layer, create_tracing_layer},
    routes::journey_get,
};
use tower::ServiceBuilder;

/// Creates and configures the Axum application.
/// Sets up database connection, runs migrations, configures CORS, and defines routes.
#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Initialize configuration
    let (state, server_addr) = initialize_config()?;

    // Run migrations
    run_migrations(&state.db).await?;

    // Create middleware layers
    let cors_layer = create_cors_layer().expect("Failed to create CORS layer");
    let tracing_layer = create_tracing_layer();

    // Create router for public routes (no authentication required)
    let public_routes = Router::new().route("/", get(root));

    // Create router for protected routes (authentication required)
    let protected_routes = Router::new()
        .nest("/transit_stop", transit_stop_routes())
        .route("/journey", get(journey_get))
        .layer(middleware::from_fn(auth_middleware));

    // Build our application with routes
    let app = Router::new()
        .merge(public_routes)
        .merge(protected_routes)
        .layer(ServiceBuilder::new().layer(cors_layer))
        .layer(tracing_layer)
        .with_state(state);

    // Run the server
    println!("Server running on {server_addr}");
    let listener = tokio::net::TcpListener::bind(&server_addr).await?;
    axum::serve(listener, app).await?;

    Ok(())
}
