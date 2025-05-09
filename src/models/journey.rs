use serde::{Deserialize, Serialize};
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct JourneyRequest {
    pub from: String,
    pub to: String,
}

#[derive(Debug, Serialize, Deserialize)]
pub struct JourneyResponse {
    pub data: Value,
}

pub struct Journey {
    pub duration: String,
}

pub struct Section {
    pub departure_date_time: String,
    pub arrival_date_time: String,
    pub from: Stop,
    pub to: Stop,
}

pub struct Stop {
    pub id: String,
    pub name: String,
}
