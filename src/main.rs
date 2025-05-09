use back::{
    api_response::ApiResponse,
    routes::{journey_get, transit_stop_create, transit_stop_get, transit_stop_search},
    DbConn,
};
use diesel_migrations::{embed_migrations, EmbeddedMigrations, MigrationHarness};
use rocket::{
    fairing::{AdHoc, Fairing, Info, Kind},
    http::{Header, Status},
    serde::json::{json, Json},
    Build, Rocket,
};
use serde_json::Value;

#[macro_use]
extern crate rocket;

/// Runs database migrations on application startup.
/// This ensures the database schema is up to date before the application begins serving requests.
///
/// ## Arguments
/// * `rocket` - The Rocket instance being configured
///
/// ## Returns
/// * `Rocket<Build>` - The configured Rocket instance
async fn run_migrations(rocket: Rocket<Build>) -> Rocket<Build> {
    const MIGRATIONS: EmbeddedMigrations = embed_migrations!("migrations");

    DbConn::get_one(&rocket)
        .await
        .expect("database connection")
        .run(|conn| {
            conn.run_pending_migrations(MIGRATIONS)
                .expect("diesel migrations");
        })
        .await;

    rocket
}

/// CORS Configuration
/// Implements CORS (Cross-Origin Resource Sharing) headers for the application.
/// Allows requests from localhost:5173 during development.
pub struct Cors;

#[rocket::async_trait]
impl Fairing for Cors {
    fn info(&self) -> Info {
        Info {
            name: "Cross-Origin-Resource-Sharing Fairing",
            kind: Kind::Response,
        }
    }

    /// Handles CORS preflight requests.
    /// This function sets the necessary CORS headers for preflight requests.
    ///
    /// # Arguments
    /// * `_request` - The incoming request (not used here)
    /// * `response` - The response to be modified.
    async fn on_response<'r>(
        &self,
        _request: &'r rocket::Request<'_>,
        response: &mut rocket::Response<'r>,
    ) {
        response.set_header(Header::new(
            "Access-Control-Allow-Origin",
            "http://localhost:5173",
        ));
        response.set_header(Header::new(
            "Access-Control-Allow-Methods",
            "GET, POST, PUT, DELETE, OPTIONS",
        ));
        response.set_header(Header::new("Access-Control-Allow-Headers", "Content-Type"));
        response.set_header(Header::new("Access-Control-Allow-Credentials", "true"));
    }
}

/// Handles OPTIONS requests for CORS preflight requests.
/// This endpoint is necessary for CORS to work properly with browsers.
#[options("/<_..>")]
fn all_options() -> Status {
    Status::NoContent
}

/// Handles GET requests to the root path ("/").
/// Serves as a simple health check endpoint.
///
/// # Returns
/// * `&'static str` - A static string greeting message
#[get("/")]
fn root() -> Json<Value> {
    ApiResponse::success(json!({
        "message": "Hello, Rocket!"
    }))
}

/// Configures and launches the Rocket application.
/// Sets up database connection, runs migrations, configures CORS, and mounts routes.
///
#[launch]
fn rocket() -> _ {
    rocket::build()
        .attach(DbConn::fairing())
        .attach(Cors)
        .attach(AdHoc::on_ignite("Run Migrations", run_migrations))
        .mount("/", routes![root, all_options])
        .mount(
            "/transit_stop",
            routes![transit_stop_get, transit_stop_search, transit_stop_create],
        )
        .mount("/journey", routes![journey_get])
}
