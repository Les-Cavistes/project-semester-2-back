CREATE TABLE transit_stop (
    id VARCHAR(50),
    route_id VARCHAR(50),
    route_long_name VARCHAR(50),
    stop_name VARCHAR(100),
    stop_lon DECIMAL(18, 15),
    stop_lat DECIMAL(18, 15),
    shortname VARCHAR(20),
    nom_commune VARCHAR(100),
    code_insee VARCHAR(10),
    mode VARCHAR(50) CHECK (mode IN ('Metro', 'RapidTransit', 'LocalTrain')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT transit_stop_pk PRIMARY KEY (id, route_id)
);

CREATE TRIGGER update_transit_stop_timestamp AFTER
UPDATE ON transit_stop BEGIN
UPDATE transit_stop
SET
    updated_at = CURRENT_TIMESTAMP
WHERE
    id = NEW.id;

END;
