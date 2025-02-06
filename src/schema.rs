use diesel::table;

table! {
    transit_stop (id, route_id) {
        id -> Varchar,
        route_id -> Varchar,
        route_long_name -> Varchar,
        stop_name -> Varchar,
        stop_lon -> Float8, // = f64
        stop_lat -> Float8,
        shortname -> Varchar,
        nom_commune -> Varchar,
        code_insee -> Varchar,
        mode -> Varchar,
        created_at -> Bigint, // = i64
        updated_at -> Bigint,
    }
}
