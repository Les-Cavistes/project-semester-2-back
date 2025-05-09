use crate::{api_response::ApiResponse, ratp::RatpClient};
use geoconvert::LatLon;
use rocket::{get, http::Status, serde::json::Json};
use serde_json::Value;

#[get("/?<from>&<to>")]
pub async fn journey_get(from: Option<String>, to: Option<String>) -> Json<Value> {
    let from = from.unwrap_or_default();
    let to = to.unwrap_or_default();

    if from.is_empty() || to.is_empty() {
        return ApiResponse::error(
            Status::BadRequest,
            "Both 'from' and 'to' parameters are required.",
        );
    }

    let from_parts: Vec<&str> = from.split(';').collect();
    let to_parts: Vec<&str> = to.split(';').collect();

    if from_parts.len() != 2 || to_parts.len() != 2 {
        return ApiResponse::error(
            Status::BadRequest,
            "Coordinates must be in format 'longitude;latitude'",
        );
    }

    let from_lon: Result<f64, _> = from_parts[0].trim().parse();
    let from_lat: Result<f64, _> = from_parts[1].trim().parse();
    let to_lon: Result<f64, _> = to_parts[0].trim().parse();
    let to_lat: Result<f64, _> = to_parts[1].trim().parse();

    if from_lon.is_err() || from_lat.is_err() || to_lon.is_err() || to_lat.is_err() {
        return ApiResponse::error(
            Status::BadRequest,
            "Invalid coordinate values. Must be valid numbers.",
        );
    }

    let from_lon = from_lon.unwrap();
    let from_lat = from_lat.unwrap();
    let to_lon = to_lon.unwrap();
    let to_lat = to_lat.unwrap();

    let from_coords: Result<LatLon, geoconvert::Error> = LatLon::create(from_lat, from_lon);
    let to_coords: Result<LatLon, geoconvert::Error> = LatLon::create(to_lat, to_lon);
    if from_coords.is_err() || to_coords.is_err() {
        ApiResponse::error(Status::BadRequest, "Invalid coordinates provided.")
    } else {
        let from_coords: LatLon = from_coords.unwrap();
        let to_coords: LatLon = to_coords.unwrap();
        let from_coords: String = format!("{};{}", from_coords.longitude(), from_coords.latitude());
        let to_coords: String = format!("{};{}", to_coords.longitude(), to_coords.latitude());

        let client = RatpClient::new();
        match client.fetch_journey(from_coords, to_coords).await {
            Ok(response) => {
                let json_response: Value = serde_json::from_str(&response).unwrap();
                ApiResponse::success(json_response)
            }
            Err(e) => ApiResponse::error(
                Status::InternalServerError,
                &format!("Failed to fetch journey: {}", e),
            ),
        }
    }
}
