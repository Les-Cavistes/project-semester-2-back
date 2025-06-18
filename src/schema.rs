// @generated automatically by Diesel CLI.

diesel::table! {
    transit_stop (id, route_id) {
        #[max_length = 50]
        id -> Varchar,
        #[max_length = 50]
        route_id -> Varchar,
        #[max_length = 50]
        route_long_name -> Varchar,
        #[max_length = 100]
        stop_name -> Varchar,
        stop_lon -> Float4,
        stop_lat -> Float4,
        #[max_length = 20]
        shortname -> Varchar,
        #[max_length = 100]
        nom_commune -> Varchar,
        #[max_length = 10]
        code_insee -> Varchar,
        #[max_length = 50]
        mode -> Varchar,
    }
}
