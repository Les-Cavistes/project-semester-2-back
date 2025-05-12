use crate::models::JourneyResponse;
use crate::{api_response::ApiResponse, models::Place, ratp::RatpClient};
use geoconvert::LatLon;
use rocket::{get, http::Status, serde::json::Json};
use serde_json::{json, Value};

/// Represents possible errors that can occur during journey processing
#[derive(Debug)]
enum JourneyError {
    MissingParameters,
    InvalidCoordinateFormat,
    InvalidCoordinateValues,
    InvalidCoordinates,
    RatpError(String),
}

impl From<JourneyError> for Json<Value> {
    fn from(error: JourneyError) -> Self {
        match error {
            JourneyError::MissingParameters => ApiResponse::error(
                Status::BadRequest,
                "Both 'from' and 'to' parameters are required.",
            ),
            JourneyError::InvalidCoordinateFormat => ApiResponse::error(
                Status::BadRequest,
                "Coordinates must be in format 'longitude;latitude'",
            ),
            JourneyError::InvalidCoordinateValues => ApiResponse::error(
                Status::BadRequest,
                "Invalid coordinate values. Must be valid numbers.",
            ),
            JourneyError::InvalidCoordinates => {
                ApiResponse::error(Status::BadRequest, "Invalid coordinates provided.")
            }
            JourneyError::RatpError(msg) => ApiResponse::error(
                Status::InternalServerError,
                &format!("Failed to fetch journey: {msg}"),
            ),
        }
    }
}

/// Parses coordinate string into a `LatLon` object
///
/// # Arguments
/// * `coord_str` - A string representing coordinates in the format "longitude;latitude"
///
/// # Returns
/// * `Ok(LatLon)` if the coordinates are valid
/// * `Err(JourneyError)` if the format is invalid, or values are not numbers
fn parse_coordinates(coord_str: &str) -> Result<LatLon, JourneyError> {
    let parts: Vec<&str> = coord_str.split(';').collect();
    if parts.len() != 2 {
        return Err(JourneyError::InvalidCoordinateFormat);
    }

    let lon: f64 = parts[0]
        .trim()
        .parse()
        .map_err(|_| JourneyError::InvalidCoordinateValues)?;
    let lat: f64 = parts[1]
        .trim()
        .parse()
        .map_err(|_| JourneyError::InvalidCoordinateValues)?;

    LatLon::create(lat, lon).map_err(|_| JourneyError::InvalidCoordinates)
}

/// Transforms the raw journey response into a simplified format
///
/// # Arguments
/// * `response` - The raw journey response from the RATP API
///
/// # Returns
/// * `Value` - A JSON object containing the transformed journey data
fn transform_journey_response(response: &JourneyResponse) -> Value {
    json!({
        "journeys": response.journeys.iter().map(|journey| {
            json!({
                "duration": journey.duration,
                "sections": journey.sections
                    .iter()
                    .filter(|section| section.type_ != "waiting")
                    .map(|section| {
                        let from_place = extract_place_info(Option::from(&section.from));
                        let to_place = extract_place_info(Option::from(&section.to));

                        json!({
                            "duration": section.duration,
                            "departure_date_time": section.departure_date_time,
                            "arrival_date_time": section.arrival_date_time,
                            "from": from_place,
                            "to": to_place,
                            "type": section.type_
                        })
                    })
                    .collect::<Vec<_>>()
            })
        }).collect::<Vec<_>>()
    })
}

/// Handles journey-related routes for the RATP API.
/// Provides an endpoint to fetch journey information based on coordinates.
///
/// # Arguments
/// * `from` - Starting coordinates in format "longitude;latitude"
/// * `to` - Destination coordinates in format "longitude;latitude"
///
/// # Returns
/// JSON response containing journey information or error message
#[get("/?<from>&<to>")]
pub async fn journey_get(from: Option<String>, to: Option<String>) -> Json<Value> {
    let from = from.unwrap_or_default();
    let to = to.unwrap_or_default();

    if from.is_empty() || to.is_empty() {
        return JourneyError::MissingParameters.into();
    }

    let from_coords = match parse_coordinates(&from) {
        Ok(coords) => format!("{};{}", coords.longitude(), coords.latitude()),
        Err(e) => return e.into(),
    };

    let to_coords = match parse_coordinates(&to) {
        Ok(coords) => format!("{};{}", coords.longitude(), coords.latitude()),
        Err(e) => return e.into(),
    };

    let client = RatpClient::new();
    match client.fetch_journey(from_coords, to_coords).await {
        Ok(response) => ApiResponse::success(transform_journey_response(&response)),
        Err(e) => JourneyError::RatpError(e.to_string()).into(),
    }
}

/// Extracts place information from the given `Place` object.
/// If the place is a stop point, it retrieves the stop point ID and coordinates from the address field.
/// If the place is not a stop point, it retrieves the address coordinates.
///
/// # Arguments
/// * `place` - An optional reference to a `Place` object.
///
/// # Returns
/// * A JSON object containing the place information.
fn extract_place_info(place: Option<&Place>) -> Value {
    match place {
        Some(place) => {
            let is_stop_point = place.embedded_type == "stop_point";

            if is_stop_point {
                match &place.stop_point {
                    Some(stop_point) => {
                        json!({
                            "id": stop_point.id,
                            "name": place.name,
                            "coordinates": {
                                "lon": stop_point.address.coord.lon,
                                "lat": stop_point.address.coord.lat
                            }
                        })
                    }
                    None => json!({ "error": "Missing stop point data" }),
                }
            } else {
                match &place.address {
                    Some(address) => {
                        json!({
                            "name": place.name,
                            "coordinates": {
                                "lon": address.coord.lon,
                                "lat": address.coord.lat
                            }
                        })
                    }
                    None => json!({ "error": "Missing address data" }),
                }
            }
        }
        None => json!(null),
    }
}
