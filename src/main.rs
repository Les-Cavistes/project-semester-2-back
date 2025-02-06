use back::models::{NewTransitStop, TransitStop};
use back::DbConn;
use diesel_migrations::{embed_migrations, EmbeddedMigrations, MigrationHarness};
use rocket::fairing::{Fairing, Info, Kind};
use rocket::http::{Header, Status};
use rocket::serde::json::{json, serde_json, Json};
use rocket::{fairing::AdHoc, Build, Rocket};

#[macro_use]
extern crate rocket;

/// # `run_migrations`
/// Runs database migrations on application startup.
/// This ensures the database schema is up to date before the application begins serving requests.
///
/// ## Arguments
/// * `rocket` - The Rocket instance being configured
///
/// ## Returns
/// The configured Rocket instance
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

/// # CORS Configuration
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

/// # `all_options`
/// Handles OPTIONS requests for CORS preflight requests.
/// This endpoint is necessary for CORS to work properly with browsers.
#[options("/<_..>")]
fn all_options() {
    /* Intentionally left empty */
}

/// # `root`
/// Handles GET requests to the root path ("/").
/// Serves as a simple health check endpoint.
///
/// ## Returns
/// A static string greeting message
#[get("/")]
fn root() -> &'static str {
    "Hello, Rocket!"
}

/// # `create`
/// Handles POST requests to create a new transit_stop.
///
/// ## Arguments
/// * `transit_stop` - The transit_stop to create
/// * `conn` - Database connection
///
/// ## Returns
/// JSON response containing the created transit_stop or an error message
#[post("/", data = "<transit_stop>")]
async fn create(
    transit_stop: Json<NewTransitStop>,
    conn: DbConn,
) -> (Status, Json<serde_json::Value>) {
    match TransitStop::insert(transit_stop.into_inner(), &conn).await {
        Ok(transit_stop) => (
            Status::Created,
            Json(json!({
                "status": "success",
                "message": "Successfully created transit_stop",
                "transit_stop": transit_stop
            })),
        ),
        Err(e) => (
            Status::InternalServerError,
            Json(json!({
                "status": "error",
                "message": format!("Failed to create transit_stop: {}", e)
            })),
        ),
    }
}

/// # `rocket`
/// Configures and launches the Rocket application.
/// Sets up database connection, runs migrations, configures CORS, and mounts routes.
///
/// ## Returns
/// The configured Rocket instance
#[launch]
fn rocket() -> _ {
    rocket::build()
        .attach(DbConn::fairing())
        .attach(Cors)
        .attach(AdHoc::on_ignite("Run Migrations", run_migrations))
        .mount("/", routes![root, all_options])
        .mount("/transit_stop", routes![create])
}
