use crate::models::JourneyResponse;
use crate::{api_response::ApiResponse, models::Place, ratp::RatpClient};
use axum::{extract::Query, response::Json};
use geoconvert::LatLon;
use serde::Deserialize;
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
            JourneyError::MissingParameters => {
                ApiResponse::bad_request("Both 'from' and 'to' parameters are required.")
            }
            JourneyError::InvalidCoordinateFormat => {
                ApiResponse::bad_request("Coordinates must be in format 'longitude;latitude'")
            }
            JourneyError::InvalidCoordinateValues => {
                ApiResponse::bad_request("Invalid coordinate values. Must be valid numbers.")
            }
            JourneyError::InvalidCoordinates => {
                ApiResponse::bad_request("Invalid coordinates provided.")
            }
            JourneyError::RatpError(msg) => {
                ApiResponse::internal_error(&format!("Failed to fetch journey: {msg}"))
            }
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
                "departure_date_time": journey.departure_date_time,
                "arrival_date_time": journey.arrival_date_time,
                "sections": journey.sections
                    .iter()
                    .filter(|section| section.type_ != "waiting")
                    .map(|section| {
                        let from_place = extract_place_info(section.from.as_ref());
                        let to_place = extract_place_info(section.to.as_ref());

                        let mut section_json = json!({
                            "duration": section.duration,
                            "departure_date_time": section.departure_date_time,
                            "arrival_date_time": section.arrival_date_time,
                            "from": from_place,
                            "to": to_place,
                            "type": section.type_
                        });

                        // Add transport information if available (for public_transport sections)
                        if let Some(display_info) = &section.display_informations {
                            section_json["transport"] = json!({
                                "mode": display_info.commercial_mode,
                                "network": display_info.network,
                                "line": {
                                    "code": display_info.code,
                                    "name": display_info.name,
                                    "label": display_info.label,
                                    "color": display_info.color,
                                    "text_color": display_info.text_color
                                },
                                "direction": display_info.direction,
                                "headsign": display_info.headsign,
                                "physical_mode": display_info.physical_mode
                            });
                        }

                        // Add stop date times if available
                        if let Some(stop_times) = &section.stop_date_times {
                            section_json["stop_date_times"] = json!(
                                stop_times.iter().map(|stop| {
                                    json!({
                                        "stop_point": {
                                            "name": stop.stop_point.name
                                        },
                                        "departure_date_time": stop.departure_date_time,
                                        "arrival_date_time": stop.arrival_date_time
                                    })
                                }).collect::<Vec<_>>()
                            );
                        }

                        // Add geojson if available
                        if let Some(geojson) = &section.geojson {
                            section_json["geojson"] = json!({
                                "type": geojson.type_,
                                "coordinates": geojson.coordinates,
                                "properties": geojson.properties.iter().map(|prop| {
                                    json!({ "length": prop.length })
                                }).collect::<Vec<_>>()
                            });
                        }

                        section_json
                    })
                    .collect::<Vec<_>>()
            })
        }).collect::<Vec<_>>()
    })
}

/// Query parameters for journey requests
#[derive(Deserialize)]
pub struct JourneyQuery {
    from: Option<String>,
    to: Option<String>,
}

/// Handles journey-related routes for the RATP API.
/// Provides an endpoint to fetch journey information based on coordinates.
///
/// # Arguments
/// * `Query(params)` - Query parameters containing 'from' and 'to' coordinates
///
/// # Returns
/// JSON response containing journey information or error message
pub async fn journey_get(Query(params): Query<JourneyQuery>) -> Json<Value> {
    let from = params.from.unwrap_or_default();
    let to = params.to.unwrap_or_default();

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
