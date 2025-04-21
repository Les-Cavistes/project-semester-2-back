use std::path::Path;

pub fn main() {
    let config_path = Path::new("hooksmith.yaml");

    hooksmith::init(config_path);
}
