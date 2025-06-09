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
    pub stop_point: Option<StopPoint>,
}

#[derive(Debug, Deserialize)]
pub struct StopPoint {
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
