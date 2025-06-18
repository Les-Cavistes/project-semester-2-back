use serde::Deserialize;

#[derive(Debug, Deserialize)]
pub struct JourneyResponse {
    pub journeys: Vec<Journey>,
}

#[derive(Debug, Deserialize)]
pub struct Journey {
    pub duration: i32,
    pub departure_date_time: String,
    pub arrival_date_time: String,
    pub sections: Vec<Section>,
}

#[derive(Debug, Deserialize)]
pub struct Section {
    pub duration: i32,
    pub departure_date_time: String,
    pub arrival_date_time: String,
    #[serde(default)]
    pub from: Option<Place>,
    #[serde(default)]
    pub to: Option<Place>,
    #[serde(rename = "type")]
    pub type_: String,
    #[serde(default)]
    pub geojson: Option<GeoJson>,
    // Add display_informations field for transport info
    #[serde(default)]
    pub display_informations: Option<DisplayInformations>,
    // Add stop_date_times for detailed stop information
    #[serde(default)]
    pub stop_date_times: Option<Vec<StopDateTime>>,
}

// New struct for transport display information
#[derive(Debug, Deserialize)]
pub struct DisplayInformations {
    pub commercial_mode: String,
    pub network: String,
    pub direction: String,
    pub label: String,
    pub color: String,
    pub code: String,
    pub headsign: String,
    pub name: String,
    pub text_color: String,
    pub trip_short_name: String,
    pub description: String,
    pub physical_mode: String,
}

// New struct for stop date times
#[derive(Debug, Deserialize)]
pub struct StopDateTime {
    pub stop_point: StopPointInfo,
    pub departure_date_time: Option<String>,
    pub arrival_date_time: Option<String>,
}

// New struct for stop point information (different from Place's StopPoint)
#[derive(Debug, Deserialize)]
pub struct StopPointInfo {
    pub name: String,
}

#[derive(Debug, Deserialize)]
pub struct GeoJson {
    #[serde(rename = "type")]
    pub type_: String,
    pub coordinates: Vec<Vec<f64>>,
    pub properties: Vec<GeoJsonProperty>,
}

#[derive(Debug, Deserialize)]
pub struct GeoJsonProperty {
    pub length: i32,
}

#[derive(Debug, Deserialize)]
pub struct Place {
    pub name: String,
    pub embedded_type: String,
    #[serde(default)]
    pub address: Option<Address>,
    #[serde(default)]
    pub stop_point: Option<PlaceStopPoint>,
}

#[derive(Debug, Deserialize)]
pub struct PlaceStopPoint {
    pub id: String,
    pub address: Address,
}

#[derive(Debug, Deserialize)]
pub struct Address {
    pub coord: Coordinates,
}

#[derive(Debug, Deserialize)]
pub struct Coordinates {
    pub lon: String,
    pub lat: String,
}
