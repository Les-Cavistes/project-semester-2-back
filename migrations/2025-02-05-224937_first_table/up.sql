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

-- Insert transit stops
INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58879',
    'IDFM:C01730',
    'P',
    'Chelles - Gournay',
    2.5833806594500697,
    48.87411948897062,
    'P',
    'Chelles',
    '77108',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47484',
    'IDFM:C01730',
    'P',
    'Isles - Armentières - Congis',
    3.007871639575125,
    48.99837487688993,
    'P',
    'Isles-les-Meldeuses',
    '77231',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47486',
    'IDFM:C01730',
    'P',
    'Lizy-sur-Ourcq',
    3.0317831029512066,
    49.02172710081919,
    'P',
    'Lizy-sur-Ourcq',
    '77257',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43247',
    'IDFM:C01730',
    'P',
    'Marles-en-Brie',
    2.868811725090548,
    48.73481854687385,
    'P',
    'La Houssaye-en-Brie',
    '77229',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47145',
    'IDFM:C01731',
    'R',
    'Héricy',
    2.7607507689116346,
    48.44272124429534,
    'R',
    'Héricy',
    '77226',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43106',
    'IDFM:C01731',
    'R',
    'Champagne-sur-Seine',
    2.798915755216375,
    48.40726498958356,
    'R',
    'Champagne-sur-Seine',
    '77079',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47119',
    'IDFM:C01731',
    'R',
    'Bagneaux-sur-Loing',
    2.7040329448732985,
    48.22938980618883,
    'R',
    'Bagneaux-sur-Loing',
    '77016',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47953',
    'IDFM:C01731',
    'R',
    'Saint-Mammès',
    2.816506976966753,
    48.38264713543743,
    'R',
    'Saint-Mammès',
    '77419',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46886',
    'IDFM:C01736',
    'N',
    'Maule',
    1.8568974216555532,
    48.90932809474093,
    'N',
    'Maule',
    '78380',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46884',
    'IDFM:C01736',
    'N',
    'Mareil-sur-Mauldre',
    1.8718488171877579,
    48.89302020567544,
    'N',
    'Mareil-sur-Mauldre',
    '78368',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47935',
    'IDFM:C01736',
    'N',
    'Houdan',
    1.6021344463889766,
    48.79602555328117,
    'N',
    'Houdan',
    '78310',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47885',
    'IDFM:C01736',
    'N',
    'Plaisir - Grignon',
    1.943537514733802,
    48.831926089228816,
    'N',
    'Plaisir',
    '78490',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43221',
    'IDFM:C01736',
    'N',
    'Villepreux - Les Clayes',
    1.992798523459497,
    48.82366793006802,
    'N',
    'Les Clayes-sous-Bois',
    '78165',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43214',
    'IDFM:C01736',
    'N',
    'Vanves - Malakoff',
    2.2919742374890983,
    48.81828945559893,
    'N',
    'Vanves',
    '92075',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43111',
    'IDFM:C01736',
    'N',
    'Clamart',
    2.274243860950152,
    48.814225639142954,
    'N',
    'Clamart',
    '92023',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43195',
    'IDFM:C01736',
    'N',
    'Sèvres Rive Gauche',
    2.215079572125279,
    48.82121360785643,
    'N',
    'Sèvres',
    '92072',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:462388',
    'IDFM:C01736',
    'N',
    'Viroflay Rive Gauche',
    2.17158260741522,
    48.800665521455045,
    'N',
    'Viroflay',
    '78686',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43147',
    'IDFM:C01736',
    'N',
    'La Verrière',
    1.943057018064192,
    48.7551716132828,
    'N',
    'La Verrière',
    '78644',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47524',
    'IDFM:C01737',
    'H',
    'Belloy - Saint-Martin',
    2.3613265147338978,
    49.09838940491585,
    'H',
    'Belloy-en-France',
    '95056',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47528',
    'IDFM:C01737',
    'H',
    'Luzarches',
    2.4200435326085863,
    49.117099228494695,
    'H',
    'Luzarches',
    '95352',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43166',
    'IDFM:C01737',
    'H',
    'Montigny - Beauchamp',
    2.1965151756043033,
    49.007744118117,
    'H',
    'Pierrelaye',
    '95488',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43180',
    'IDFM:C01737',
    'H',
    'Pierrelaye',
    2.1545313948758564,
    49.01917957374756,
    'H',
    'Pierrelaye',
    '95488',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43133',
    'IDFM:C01737',
    'H',
    'Groslay',
    2.3535217052321715,
    48.98436467954606,
    'H',
    'Groslay',
    '95288',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43168',
    'IDFM:C01737',
    'H',
    'Montsoult - Maffliers',
    2.3228219079408823,
    49.06616021905701,
    'H',
    'Montsoult',
    '95430',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411440',
    'IDFM:C01737',
    'H',
    'Creil',
    2.46892902764167,
    49.264185555044406,
    'H',
    'Creil',
    '60175',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47533',
    'IDFM:C01737',
    'H',
    'Bruyères-sur-Oise',
    2.32483287423228,
    49.15511620671838,
    'H',
    'Bruyères-sur-Oise',
    '95116',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47589',
    'IDFM:C01737',
    'H',
    'L''Isle-Adam - Parmain',
    2.209941858169547,
    49.11454854558362,
    'H',
    'Parmain',
    '95480',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47585',
    'IDFM:C01737',
    'H',
    'Mériel',
    2.205438463461229,
    49.07775311707399,
    'H',
    'Mériel',
    '95392',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47580',
    'IDFM:C01737',
    'H',
    'Frépillon',
    2.197098920791642,
    49.045277206622124,
    'H',
    'Frépillon',
    '95256',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:412743',
    'IDFM:C01737',
    'H',
    'Saint-Denis',
    2.345479004987329,
    48.93482889939617,
    'H',
    'Saint-Denis',
    '93066',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411390',
    'IDFM:C01738',
    'K',
    'Nanteuil-le-Haudouin',
    2.7941647655566535,
    49.14251123380041,
    'K',
    'Nanteuil-le-Haudouin',
    '60446',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43129',
    'IDFM:C01739',
    'J',
    'Gargenville',
    1.8090110590166268,
    48.983003872761415,
    'J',
    'Gargenville',
    '78267',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46926',
    'IDFM:C01739',
    'J',
    'Triel-sur-Seine',
    2.005709444143668,
    48.98141600700941,
    'J',
    'Triel-sur-Seine',
    '78624',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47929',
    'IDFM:C01739',
    'J',
    'Chanteloup-les-Vignes',
    2.0276211497651646,
    48.97035707590211,
    'J',
    'Chanteloup-les-Vignes',
    '78138',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47949',
    'IDFM:C01739',
    'J',
    'Santeuil - Le Perchay',
    1.949406923865895,
    49.12334471123142,
    'J',
    'Santeuil',
    '95584',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43079',
    'IDFM:C01739',
    'J',
    'Éragny - Neuville',
    2.090571123307668,
    49.01790068888594,
    'J',
    'Éragny',
    '95218',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43113',
    'IDFM:C01739',
    'J',
    'Colombes',
    2.2593187577109575,
    48.92395845032284,
    'J',
    'Colombes',
    '92025',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:59038',
    'IDFM:C01739',
    'J',
    'Vernon - Giverny',
    1.477776772218189,
    49.091626659828435,
    'J',
    'Vernon',
    '27681',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47954',
    'IDFM:C01740',
    'L',
    'Saint-Nom-la-Bretèche Forêt de Marly',
    2.051299627156171,
    48.867096240827834,
    'L',
    'L''Étang-la-Ville',
    '78224',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:473506',
    'IDFM:C01740',
    'L',
    'Louveciennes',
    2.1227777344789676,
    48.8612602848357,
    'L',
    'Louveciennes',
    '78350',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47790',
    'IDFM:C01740',
    'L',
    'Bougival',
    2.132028029856739,
    48.85379323051655,
    'L',
    'La Celle-Saint-Cloud',
    '78126',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47880',
    'IDFM:C01740',
    'L',
    'La Celle-Saint-Cloud',
    2.138236726142033,
    48.84262523059504,
    'L',
    'La Celle-Saint-Cloud',
    '78126',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47897',
    'IDFM:C01740',
    'L',
    'Cergy Saint-Christophe',
    2.0345219282999176,
    49.049642166828754,
    'L',
    'Cergy',
    '95127',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47879',
    'IDFM:C01740',
    'L',
    'Neuville Université',
    2.078348820578231,
    49.01374275942672,
    'L',
    'Neuville-sur-Oise',
    '95450',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:422065',
    'IDFM:C01740',
    'L',
    'Le Val d''Or',
    2.2165513289937904,
    48.85625374079433,
    'L',
    'Saint-Cloud',
    '92064',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47767',
    'IDFM:C01740',
    'L',
    'Sèvres - Ville-d''Avray',
    2.2007294495659546,
    48.827253206930806,
    'L',
    'Sèvres',
    '92072',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44602',
    'IDFM:C01740',
    'L',
    'Versailles Rive Droite',
    2.1368871000602927,
    48.80949051640336,
    'L',
    'Versailles',
    '78646',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58566',
    'IDFM:C01740',
    'L',
    'Gare Saint-Lazare',
    2.3244386552397684,
    48.87747568635212,
    'L',
    'Paris',
    '75056',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45493',
    'IDFM:C01740',
    'L',
    'Pont Cardinet',
    2.312950431098551,
    48.88839532721545,
    'L',
    'Paris',
    '75056',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47412',
    'IDFM:C01740',
    'L',
    'La Garenne-Colombes',
    2.2397947530458273,
    48.90957685679064,
    'L',
    'Colombes',
    '92025',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43191',
    'IDFM:C01740',
    'L',
    'Sartrouville',
    2.1572200388507317,
    48.93769529363442,
    'L',
    'Sartrouville',
    '78586',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:470549',
    'IDFM:C01741',
    'U',
    'La Défense',
    2.238418596250407,
    48.892229801568206,
    'U',
    'Puteaux',
    '92062',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43196',
    'IDFM:C01741',
    'U',
    'Saint-Cloud',
    2.2176312182469986,
    48.846058536430505,
    'U',
    'Saint-Cloud',
    '92064',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43209',
    'IDFM:C01741',
    'U',
    'Trappes',
    2.0065902166898377,
    48.7747853970692,
    'U',
    'Trappes',
    '78621',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43215',
    'IDFM:C02711',
    'V',
    'Vauboyen',
    2.1925522822775045,
    48.75897132762851,
    'V',
    'Bièvres',
    '91064',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463044',
    'IDFM:C01371',
    '1',
    'Pont de Neuilly',
    2.2585225729481575,
    48.8854985504452,
    '1',
    'Neuilly-sur-Seine',
    '92051',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463257',
    'IDFM:C01371',
    '1',
    'Porte Maillot',
    2.2822896139411903,
    48.877805650437985,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22090',
    'IDFM:C01371',
    '1',
    'Champs-Élysées - Clemenceau',
    2.314397292025236,
    48.867583959552555,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22081',
    'IDFM:C01371',
    '1',
    'Louvre - Rivoli',
    2.3409026134809903,
    48.86078090878698,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463149',
    'IDFM:C01371',
    '1',
    'Château de Vincennes',
    2.440540095406114,
    48.84431751431355,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463197',
    'IDFM:C01371',
    '1',
    'Gare de Lyon',
    2.373125016776689,
    48.84575948671397,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22089',
    'IDFM:C01371',
    '1',
    'Bastille',
    2.368718961034089,
    48.85205429349772,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463227',
    'IDFM:C01371',
    '1',
    'Palais Royal - Musée du Louvre',
    2.336561574182243,
    48.862366755622624,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22075',
    'IDFM:C01371',
    '1',
    'Tuileries',
    2.3297453212172794,
    48.864550163577015,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22078',
    'IDFM:C01371',
    '1',
    'Porte Maillot',
    2.2825838473615496,
    48.87816265364455,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463117',
    'IDFM:C01372',
    '2',
    'Alexandre Dumas',
    2.3947127337554788,
    48.85624467843737,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22118',
    'IDFM:C01372',
    '2',
    'Jaurès',
    2.370269867509251,
    48.88159683079925,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22123',
    'IDFM:C01372',
    '2',
    'Anvers',
    2.3441548403302916,
    48.882868568843925,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22117',
    'IDFM:C01372',
    '2',
    'Monceau',
    2.309412967374703,
    48.880568770126835,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463240',
    'IDFM:C01372',
    '2',
    'Monceau',
    2.309412967374703,
    48.880568770126835,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22125',
    'IDFM:C01372',
    '2',
    'Blanche',
    2.3324843754343627,
    48.88376635447715,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463088',
    'IDFM:C01372',
    '2',
    'Pigalle',
    2.3382179854559224,
    48.88219737464818,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462983',
    'IDFM:C01372',
    '2',
    'Couronnes',
    2.3802889829271936,
    48.86919334513237,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22122',
    'IDFM:C01372',
    '2',
    'Alexandre Dumas',
    2.3945914186721278,
    48.856199097341126,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22035',
    'IDFM:C01373',
    '3',
    'Pont de Levallois - Bécon',
    2.2801801985017236,
    48.89718710383118,
    '3',
    'Levallois-Perret',
    '92044',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462971',
    'IDFM:C01373',
    '3',
    'Saint-Lazare',
    2.3244924701707954,
    48.87496650103443,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22030',
    'IDFM:C01373',
    '3',
    'Opéra',
    2.331047286711241,
    48.87143742899726,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21902',
    'IDFM:C01373',
    '3',
    'République',
    2.364283168306328,
    48.86712186124499,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22020',
    'IDFM:C01373',
    '3',
    'Père Lachaise',
    2.386157046298338,
    48.86296417435419,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22037',
    'IDFM:C01373',
    '3',
    'Gallieni',
    2.4159299613832097,
    48.86512770051251,
    '3',
    'Bagnolet',
    '93006',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462946',
    'IDFM:C01373',
    '3',
    'République',
    2.3643332975454276,
    48.86720306822776,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463122',
    'IDFM:C01373',
    '3',
    'Arts et Métiers',
    2.3566822734187167,
    48.86561531899988,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22029',
    'IDFM:C01373',
    '3',
    'Sentier',
    2.3475538159377884,
    48.86734660429376,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462989',
    'IDFM:C01373',
    '3',
    'Quatre Septembre',
    2.3363187355954875,
    48.86965909738424,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22023',
    'IDFM:C01373',
    '3',
    'Porte de Champerret',
    2.291848147336647,
    48.885736266685264,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462974',
    'IDFM:C01374',
    '4',
    'Marcadet - Poissonniers',
    2.3495451670385634,
    48.89127969913649,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22130',
    'IDFM:C01374',
    '4',
    'Barbès - Rochechouart',
    2.349629927853002,
    48.883402060486226,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22148',
    'IDFM:C01374',
    '4',
    'Gare de l''Est',
    2.3577495818204395,
    48.87627821831841,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463313',
    'IDFM:C01374',
    '4',
    'Strasbourg - Saint-Denis',
    2.3543411093711257,
    48.86966773787259,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463072',
    'IDFM:C01374',
    '4',
    'Réaumur - Sébastopol',
    2.352381731140252,
    48.866077771215046,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463171',
    'IDFM:C01374',
    '4',
    'Etienne Marcel',
    2.3489761968791085,
    48.86370301202431,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462995',
    'IDFM:C01374',
    '4',
    'Odéon',
    2.3395157696170745,
    48.852175453081486,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462993',
    'IDFM:C01374',
    '4',
    'Saint-Germain-des-Prés',
    2.3339874291342255,
    48.85367371343323,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22138',
    'IDFM:C01374',
    '4',
    'Saint-Placide',
    2.3268499626718526,
    48.847041473609366,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22131',
    'IDFM:C01374',
    '4',
    'Raspail',
    2.330466993719873,
    48.83915635952557,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463118',
    'IDFM:C01374',
    '4',
    'Alésia',
    2.3271926250651647,
    48.828152157703514,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462996',
    'IDFM:C01374',
    '4',
    'Montparnasse Bienvenue',
    2.3243858698057784,
    48.84391578859517,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22142',
    'IDFM:C01374',
    '4',
    'Réaumur - Sébastopol',
    2.352613903045621,
    48.86604305354321,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463022',
    'IDFM:C01374',
    '4',
    'Gare de l''Est',
    2.3578981321043053,
    48.876283511884786,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463183',
    'IDFM:C01374',
    '4',
    'Gare du Nord',
    2.356808788205409,
    48.87959170741013,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462999',
    'IDFM:C01375',
    '5',
    'Laumière',
    2.3793117790180993,
    48.88520088689033,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463032',
    'IDFM:C01375',
    '5',
    'Stalingrad',
    2.367348121277192,
    48.8841445128949,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463021',
    'IDFM:C01375',
    '5',
    'Gare de l''Est',
    2.357982972943156,
    48.876081616617256,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21905',
    'IDFM:C01375',
    '5',
    'Oberkampf',
    2.3685262686038397,
    48.864581198067484,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463018',
    'IDFM:C01375',
    '5',
    'Bastille',
    2.3687984466220384,
    48.85330031648217,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463023',
    'IDFM:C01375',
    '5',
    'Gare d''Austerlitz',
    2.3654431802574227,
    48.842395852858516,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463097',
    'IDFM:C01375',
    '5',
    'Saint-Marcel',
    2.3608176665940044,
    48.83847698406796,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463182',
    'IDFM:C01375',
    '5',
    'Gare du Nord',
    2.357342884924845,
    48.87968001223662,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22001',
    'IDFM:C01375',
    '5',
    'Stalingrad',
    2.367348121277192,
    48.8841445128949,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463131',
    'IDFM:C01375',
    '5',
    'Bobigny Pablo Picasso',
    2.4493013366465726,
    48.906366795030564,
    '5',
    'Bobigny',
    '93008',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22167',
    'IDFM:C01376',
    '6',
    'Picpus',
    2.401248269453829,
    48.84501767720269,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463004',
    'IDFM:C01376',
    '6',
    'Nationale',
    2.3628041715935075,
    48.83323527967617,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22160',
    'IDFM:C01376',
    '6',
    'Saint-Jacques',
    2.337154370925007,
    48.832916006219165,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463314',
    'IDFM:C01376',
    '6',
    'Sèvres-Lecourbe',
    2.309529610430393,
    48.84564768265073,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22171',
    'IDFM:C01376',
    '6',
    'Dupleix',
    2.293663726731039,
    48.8504116258067,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22095',
    'IDFM:C01376',
    '6',
    'Charles de Gaulle - Etoile',
    2.294995735441831,
    48.87383861478572,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22163',
    'IDFM:C01376',
    '6',
    'Sèvres-Lecourbe',
    2.3094677673863235,
    48.84558437021755,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463105',
    'IDFM:C01376',
    '6',
    'Corvisart',
    2.350611225926166,
    48.82986001331238,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22161',
    'IDFM:C01376',
    '6',
    'Quai de la Gare',
    2.372825013717543,
    48.83700262953923,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463127',
    'IDFM:C01376',
    '6',
    'Bel-Air',
    2.400867131995259,
    48.84142733223358,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463251',
    'IDFM:C01377',
    '7',
    'Pierre et Marie Curie',
    2.377362970985953,
    48.81587757774557,
    '7',
    'Ivry-sur-Seine',
    '94041',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463107',
    'IDFM:C01377',
    '7',
    'Le Kremlin-Bicêtre',
    2.3622716933808072,
    48.81028030813587,
    '7',
    'Le Kremlin-Bicêtre',
    '94043',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22370',
    'IDFM:C01377',
    '7',
    'Tolbiac',
    2.357318439213192,
    48.82613686175372,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22375',
    'IDFM:C01377',
    '7',
    'Pyramides',
    2.3344175359665553,
    48.865880289914124,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22388',
    'IDFM:C01377',
    '7',
    'Chaussée d''Antin - La Fayette',
    2.3337385944087012,
    48.87313420577469,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463206',
    'IDFM:C01377',
    '7',
    'Le Peletier',
    2.340206459456337,
    48.874851793670715,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463155',
    'IDFM:C01377',
    '7',
    'Crimée',
    2.3770380600019925,
    48.890814345621656,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22395',
    'IDFM:C01377',
    '7',
    'La Courneuve - 8 Mai 1945',
    2.4102214036405085,
    48.92024579662936,
    '7',
    'La Courneuve',
    '93027',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22384',
    'IDFM:C01377',
    '7',
    'Louis Blanc',
    2.3643562491890786,
    48.88124182075271,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463139',
    'IDFM:C01377',
    '7',
    'Cadet',
    2.3443838837796562,
    48.87604838013132,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22379',
    'IDFM:C01377',
    '7',
    'Pont Neuf',
    2.3417089232034765,
    48.858456031111984,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22398',
    'IDFM:C01377',
    '7',
    'Le Kremlin-Bicêtre',
    2.362130413802561,
    48.81025257278989,
    '7',
    'Le Kremlin-Bicêtre',
    '94043',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463269',
    'IDFM:C01377',
    '7',
    'Villejuif - Louis Aragon',
    2.3677168990538426,
    48.787572501132765,
    '7',
    'Villejuif',
    '94076',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22187',
    'IDFM:C01378',
    '8',
    'Lourmel',
    2.2822419598550767,
    48.83866086365992,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22188',
    'IDFM:C01378',
    '8',
    'Boucicaut',
    2.2879184311245595,
    48.841024160993214,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22183',
    'IDFM:C01378',
    '8',
    'La Motte-Picquet - Grenelle',
    2.298745444388579,
    48.84950618174656,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22192',
    'IDFM:C01378',
    '8',
    'La Tour-Maubourg',
    2.3105887898739876,
    48.85766922956403,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22197',
    'IDFM:C01378',
    '8',
    'Grands Boulevards',
    2.342839648636545,
    48.87146677844407,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22159',
    'IDFM:C01378',
    '8',
    'Strasbourg - Saint-Denis',
    2.353744768129407,
    48.86938572399119,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462962',
    'IDFM:C01378',
    '8',
    'République',
    2.363149406900382,
    48.86742161002706,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463048',
    'IDFM:C01378',
    '8',
    'Filles du Calvaire',
    2.3665956945709348,
    48.8630421114174,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463241',
    'IDFM:C01378',
    '8',
    'Montgallet',
    2.3904000136353645,
    48.84400507570895,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463277',
    'IDFM:C01378',
    '8',
    'Porte de Charenton',
    2.402372975541869,
    48.8336104146937,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22214',
    'IDFM:C01378',
    '8',
    'Ecole Vétérinaire de Maisons-Alfort',
    2.422322751702586,
    48.814758684006726,
    '8',
    'Maisons-Alfort',
    '94046',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22213',
    'IDFM:C01378',
    '8',
    'Créteil - Préfecture',
    2.4593051692912615,
    48.77975652677895,
    '8',
    'Créteil',
    '94028',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463167',
    'IDFM:C01378',
    '8',
    'Créteil - Université',
    2.4505697455342568,
    48.78994285432577,
    '8',
    'Créteil',
    '94028',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463015',
    'IDFM:C01378',
    '8',
    'Maisons-Alfort - Les Juilliottes',
    2.4459564771573397,
    48.80321905319987,
    '8',
    'Maisons-Alfort',
    '94046',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463225',
    'IDFM:C01378',
    '8',
    'Maisons-Alfort - Stade',
    2.434924424365985,
    48.80897743416717,
    '8',
    'Maisons-Alfort',
    '94046',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22202',
    'IDFM:C01378',
    '8',
    'Chemin Vert',
    2.3682216127650335,
    48.85710602289208,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22199',
    'IDFM:C01378',
    '8',
    'République',
    2.3632563242479026,
    48.86748513277203,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463312',
    'IDFM:C01378',
    '8',
    'Strasbourg - Saint-Denis',
    2.353797473153033,
    48.86946694920397,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22196',
    'IDFM:C01378',
    '8',
    'Richelieu - Drouot',
    2.3384190255427955,
    48.87173920910264,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463244',
    'IDFM:C01378',
    '8',
    'Opéra',
    2.3320941299398554,
    48.87066534465599,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463239',
    'IDFM:C01379',
    '9',
    'Michel-Ange - Molitor',
    2.261631583355701,
    48.844880488259605,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463203',
    'IDFM:C01379',
    '9',
    'La Muette',
    2.2740962446697224,
    48.85809196689865,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463052',
    'IDFM:C01379',
    '9',
    'Alma - Marceau',
    2.3011043523926706,
    48.86464714790582,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21926',
    'IDFM:C01379',
    '9',
    'Havre-Caumartin',
    2.327651103418782,
    48.87366675194512,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463143',
    'IDFM:C01379',
    '9',
    'Charonne',
    2.384782396448888,
    48.854939443448494,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21942',
    'IDFM:C01379',
    '9',
    'Robespierre',
    2.4229730864963517,
    48.855673808550314,
    '9',
    'Montreuil',
    '93048',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21916',
    'IDFM:C01379',
    '9',
    'Voltaire',
    2.3802080115879227,
    48.857735295553454,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462963',
    'IDFM:C01379',
    '9',
    'République',
    2.3633023407804536,
    48.86751235781114,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463188',
    'IDFM:C01379',
    '9',
    'Havre-Caumartin',
    2.327677208279404,
    48.8737568325288,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463238',
    'IDFM:C01379',
    '9',
    'Michel-Ange - Auteuil',
    2.2638093220226634,
    48.84770893216831,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463136',
    'IDFM:C01380',
    '10',
    'Boulogne Pont de Saint-Cloud',
    2.2283125898228056,
    48.84067248206251,
    '10',
    'Boulogne-Billancourt',
    '92012',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21982',
    'IDFM:C01380',
    '10',
    'Mirabeau',
    2.2730641263728333,
    48.84707750734599,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462944',
    'IDFM:C01380',
    '10',
    'Cluny - La Sorbonne',
    2.3450218824744566,
    48.850793731720536,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21984',
    'IDFM:C01380',
    '10',
    'Cardinal Lemoine',
    2.3513280016731763,
    48.84670003526311,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21968',
    'IDFM:C01380',
    '10',
    'Jussieu',
    2.3549316718232256,
    48.846197891637004,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463141',
    'IDFM:C01380',
    '10',
    'Cardinal Lemoine',
    2.3513280016731763,
    48.84670003526311,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462959',
    'IDFM:C01380',
    '10',
    'Vaneau',
    2.3213512423547358,
    48.84889457005888,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21990',
    'IDFM:C01381',
    '11',
    'Hôtel de Ville',
    2.35154698561547,
    48.85757442237991,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462960',
    'IDFM:C01381',
    '11',
    'République',
    2.3648796725347783,
    48.86788497134881,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463254',
    'IDFM:C01381',
    '11',
    'Place des Fêtes',
    2.393139370360497,
    48.87672366197325,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490792',
    'IDFM:C01381',
    '11',
    'Coteaux Beauclair',
    2.4674333244222826,
    48.88208645899326,
    '11',
    'Rosny-sous-Bois',
    '93064',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490770',
    'IDFM:C01381',
    '11',
    'Coteaux Beauclair',
    2.4673647804495924,
    48.88212212689498,
    '11',
    'Rosny-sous-Bois',
    '93064',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490762',
    'IDFM:C01381',
    '11',
    'Serge Gainsbourg',
    2.4271621685895237,
    48.88125303440166,
    '11',
    'Les Lilas',
    '93045',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21999',
    'IDFM:C01381',
    '11',
    'Mairie des Lilas',
    2.4162978208011863,
    48.87974365006289,
    '11',
    'Les Lilas',
    '93045',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21951',
    'IDFM:C01381',
    '11',
    'Place des Fêtes',
    2.393139370360497,
    48.87672366197325,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22050',
    'IDFM:C01382',
    '12',
    'Notre-Dame-de-Lorette',
    2.3378736192226386,
    48.8760350312806,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463261',
    'IDFM:C01382',
    '12',
    'Porte de Versailles',
    2.2877417091423347,
    48.83251953251351,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22061',
    'IDFM:C01382',
    '12',
    'Corentin Celton',
    2.2789586605256367,
    48.826823295159116,
    '12',
    'Issy-les-Moulineaux',
    '92040',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22056',
    'IDFM:C01382',
    '12',
    'Falguière',
    2.317551235617027,
    48.844317683534335,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462968',
    'IDFM:C01382',
    '12',
    'Rennes',
    2.32802068556793,
    48.84819024311401,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462966',
    'IDFM:C01382',
    '12',
    'Sèvres - Babylone',
    2.326886801039095,
    48.851574452640946,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22045',
    'IDFM:C01382',
    '12',
    'Solférino',
    2.3231029882985132,
    48.858550089641746,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22059',
    'IDFM:C01382',
    '12',
    'Abbesses',
    2.338367478180517,
    48.884383574623314,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463205',
    'IDFM:C01382',
    '12',
    'Lamarck - Caulaincourt',
    2.3385838243831936,
    48.88968180996681,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22041',
    'IDFM:C01382',
    '12',
    'Porte de la Chapelle',
    2.359248542310361,
    48.89740242267042,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22240',
    'IDFM:C01383',
    '13',
    'Basilique de Saint-Denis',
    2.3592958408126816,
    48.93678306532419,
    '13',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22239',
    'IDFM:C01383',
    '13',
    'Carrefour Pleyel',
    2.343443653352174,
    48.91980854982986,
    '13',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462953',
    'IDFM:C01383',
    '13',
    'Gabriel Péri',
    2.29460408001733,
    48.916347418146714,
    '13',
    'Asnières-sur-Seine',
    '92004',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462978',
    'IDFM:C01383',
    '13',
    'Brochant',
    2.3199048172093666,
    48.89065187119005,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463066',
    'IDFM:C01383',
    '13',
    'Liège',
    2.3269450274387555,
    48.87971082693934,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462970',
    'IDFM:C01383',
    '13',
    'Saint-Lazare',
    2.3254668925871607,
    48.875462135328796,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463320',
    'IDFM:C01383',
    '13',
    'Varenne',
    2.3149776470363417,
    48.85662420264694,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462954',
    'IDFM:C01383',
    '13',
    'Montparnasse Bienvenue',
    2.3208534383022275,
    48.84228592360469,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22236',
    'IDFM:C01383',
    '13',
    'Malakoff - Rue Etienne Dolet',
    2.296972463702674,
    48.815265523780766,
    '13',
    'Malakoff',
    '92046',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463212',
    'IDFM:C01383',
    '13',
    'Mairie de Saint-Ouen',
    2.333893080685357,
    48.911958864732505,
    '13',
    'Saint-Ouen-sur-Seine',
    '93070',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22241',
    'IDFM:C01383',
    '13',
    'Saint-Denis - Porte de Paris',
    2.3561729251015997,
    48.929922750445755,
    '13',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463214',
    'IDFM:C01383',
    '13',
    'Malakoff - Rue Etienne Dolet',
    2.2971240100835835,
    48.81533836595972,
    '13',
    'Malakoff',
    '92046',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22231',
    'IDFM:C01383',
    '13',
    'Brochant',
    2.3201902468999456,
    48.89062201554889,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21957',
    'IDFM:C01384',
    '14',
    'Bercy',
    2.3791909087742873,
    48.84014763512746,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463284',
    'IDFM:C01384',
    '14',
    'Pyramides',
    2.3347388358754153,
    48.86580563193237,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463046',
    'IDFM:C01384',
    '14',
    'Gare de Lyon',
    2.373100581933962,
    48.84467563174822,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490841',
    'IDFM:C01384',
    '14',
    'Maison Blanche',
    2.3589182598590392,
    48.82120786862075,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490833',
    'IDFM:C01384',
    '14',
    'Thiais - Orly​ (Pont de Rungis​)',
    2.3723847511214924,
    48.746835369386844,
    '14',
    'Thiais',
    '94073',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21948',
    'IDFM:C01386',
    '3B',
    'Pelleport',
    2.40160636134298,
    48.86842046799948,
    '3B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462997',
    'IDFM:C01386',
    '3B',
    'Gambetta',
    2.398537305704572,
    48.865032564464,
    '3B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:24685',
    'IDFM:C01387',
    '7B',
    'Bolivar',
    2.374124871187542,
    48.88078966297506,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463282',
    'IDFM:C01387',
    '7B',
    'Pré-Saint-Gervais',
    2.398580770693528,
    48.8801595806643,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463134',
    'IDFM:C01387',
    '7B',
    'Botzaris',
    2.388900951315739,
    48.879534991268365,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463074',
    'IDFM:C01387',
    '7B',
    'Jaurès',
    2.370465586581431,
    48.882326316477965,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463034',
    'IDFM:C01387',
    '7B',
    'Louis Blanc',
    2.364365143550256,
    48.88118341152446,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47928',
    'IDFM:C01730',
    'P',
    'Changis - Saint-Jean',
    3.026089283734262,
    48.95916631326023,
    'P',
    'Changis-sur-Marne',
    '77084',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411378',
    'IDFM:C01730',
    'P',
    'Château-Thierry',
    3.409522741444065,
    49.037933505433955,
    'P',
    'Château-Thierry',
    '02168',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47325',
    'IDFM:C01730',
    'P',
    'Montry - Condé',
    2.8256554095986797,
    48.891071946593115,
    'P',
    'Montry',
    '77315',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47962',
    'IDFM:C01730',
    'P',
    'Trilport',
    2.949685912410061,
    48.96016915361593,
    'P',
    'Trilport',
    '77475',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47942',
    'IDFM:C01730',
    'P',
    'Mortcerf',
    2.9074760676708205,
    48.789592035371314,
    'P',
    'Mortcerf',
    '77318',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47205',
    'IDFM:C01730',
    'P',
    'Guérard - La Celle-sur-Morin',
    2.9538116993768355,
    48.81076877713248,
    'P',
    'Guérard',
    '77219',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47171',
    'IDFM:C01730',
    'P',
    'Sainte-Colombe Septveilles',
    3.2553403241826864,
    48.52915312687445,
    'P',
    'Sainte-Colombe',
    '77404',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43131',
    'IDFM:C01730',
    'P',
    'Gretz-Armainvilliers',
    2.727167738339898,
    48.74645539980236,
    'P',
    'Gretz-Armainvilliers',
    '77215',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:470519',
    'IDFM:C01730',
    'P',
    'Gare de l''Est',
    2.360305141171757,
    48.87857171221123,
    'P',
    'Paris',
    '75056',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43218',
    'IDFM:C01731',
    'R',
    'Vernou-sur-Seine',
    2.8421499951400837,
    48.38667549692297,
    'R',
    'Vernou-la-Celle-sur-Seine',
    '77494',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43144',
    'IDFM:C01731',
    'R',
    'La Grande-Paroisse',
    2.896902458012003,
    48.37863280606578,
    'R',
    'La Grande-Paroisse',
    '77210',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411488',
    'IDFM:C01731',
    'R',
    'Ferrières - Fontenay',
    2.7720920761530037,
    48.09588996416835,
    'R',
    'Fontenay-sur-Loing',
    '45148',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47909',
    'IDFM:C01731',
    'R',
    'Melun',
    2.65469836071817,
    48.527491277248295,
    'R',
    'Melun',
    '77288',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47944',
    'IDFM:C01736',
    'N',
    'Nézel - Aulnay',
    1.8404153320794885,
    48.93882932493657,
    'N',
    'Nézel',
    '78451',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46847',
    'IDFM:C01736',
    'N',
    'Gare de Villiers Neauphle Pontchartrain',
    1.8775357849413559,
    48.81532337552301,
    'N',
    'Villiers-Saint-Frédéric',
    '78683',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47903',
    'IDFM:C01736',
    'N',
    'Garancières - La Queue',
    1.7645793224017485,
    48.810463686279576,
    'N',
    'Garancières',
    '78265',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47921',
    'IDFM:C01736',
    'N',
    'Orgerus - Béhoust',
    1.7030300359022215,
    48.82662740630846,
    'N',
    'Orgerus',
    '78465',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411492',
    'IDFM:C01736',
    'N',
    'Dreux',
    1.3704314171005363,
    48.731106368847485,
    'N',
    'Dreux',
    '28134',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43219',
    'IDFM:C01736',
    'N',
    'Versailles Chantiers',
    2.1349078603373464,
    48.79526039893613,
    'N',
    'Versailles',
    '78646',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:461504',
    'IDFM:C01736',
    'N',
    'Saint-Quentin en Yvelines - Montigny-le-Bretonneux',
    2.044615988930814,
    48.78748491597792,
    'N',
    'Montigny-le-Bretonneux',
    '78423',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43229',
    'IDFM:C01736',
    'N',
    'Les Essarts-le-Roi',
    1.8896613918946876,
    48.721693353095276,
    'N',
    'Les Essarts-le-Roi',
    '78220',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47595',
    'IDFM:C01737',
    'H',
    'Pont Petit',
    2.131241645234573,
    49.06087605161007,
    'H',
    'Saint-Ouen-l''Aumône',
    '95572',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43178',
    'IDFM:C01737',
    'H',
    'Persan - Beaumont',
    2.2777997330536137,
    49.147582944600785,
    'H',
    'Persan',
    '95487',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43206',
    'IDFM:C01737',
    'H',
    'Taverny',
    2.222287008769188,
    49.024976382846596,
    'H',
    'Taverny',
    '95607',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43164',
    'IDFM:C01738',
    'K',
    'Mitry - Claye',
    2.6422341369736606,
    48.9757479508066,
    'K',
    'Mitry-Mory',
    '77294',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:462394',
    'IDFM:C01738',
    'K',
    'Gare du Nord',
    2.356693437528564,
    48.88230685842714,
    'K',
    'Paris',
    '75056',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43137',
    'IDFM:C01739',
    'J',
    'Juziers',
    1.8449525722587152,
    48.99224048747195,
    'J',
    'Juziers',
    '78327',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46897',
    'IDFM:C01739',
    'J',
    'Meulan - Hardricourt',
    1.9021289902435004,
    49.00581615609435,
    'J',
    'Hardricourt',
    '78299',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47916',
    'IDFM:C01739',
    'J',
    'Andrésy',
    2.0486677678528,
    48.974620752632916,
    'J',
    'Andrésy',
    '78015',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411345',
    'IDFM:C01739',
    'J',
    'Chaumont-en-Vexin',
    1.8732362595841847,
    49.26118959499568,
    'J',
    'Chaumont-en-Vexin',
    '60143',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47922',
    'IDFM:C01739',
    'J',
    'Us',
    1.9705444983242866,
    49.09955483034093,
    'J',
    'Us',
    '95625',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44161',
    'IDFM:C01739',
    'J',
    'Montgeroult - Courcelles',
    2.0029460458068105,
    49.080811910011626,
    'J',
    'Montgeroult',
    '95422',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43212',
    'IDFM:C01739',
    'J',
    'Val d''Argenteuil',
    2.2326940500534516,
    48.95065749524003,
    'J',
    'Argenteuil',
    '95018',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:51238',
    'IDFM:C01739',
    'J',
    'Bois-Colombes',
    2.2716490888242244,
    48.91419560591249,
    'J',
    'Bois-Colombes',
    '92009',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43082',
    'IDFM:C01739',
    'J',
    'Houilles - Carrières-sur-Seine',
    2.1851757042018707,
    48.92034757911033,
    'J',
    'Houilles',
    '78311',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43191',
    'IDFM:C01739',
    'J',
    'Sartrouville',
    2.1572200388507317,
    48.93769529363442,
    'J',
    'Sartrouville',
    '78586',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47964',
    'IDFM:C01739',
    'J',
    'Vernouillet - Verneuil',
    1.9829377621754614,
    48.981645855003116,
    'J',
    'Verneuil-sur-Seine',
    '78642',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43216',
    'IDFM:C01740',
    'L',
    'Vaucresson',
    2.152674671677768,
    48.836684490249404,
    'L',
    'Vaucresson',
    '92076',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47770',
    'IDFM:C01740',
    'L',
    'Garches - Marnes-la-Coquette',
    2.187092668770097,
    48.838254440887944,
    'L',
    'Garches',
    '92033',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43170',
    'IDFM:C01740',
    'L',
    'Nanterre Université',
    2.213536495127317,
    48.90112974604822,
    'L',
    'Nanterre',
    '92050',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43118',
    'IDFM:C01740',
    'L',
    'Courbevoie',
    2.249189818087758,
    48.89861561377405,
    'L',
    'Courbevoie',
    '92026',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43205',
    'IDFM:C01741',
    'U',
    'Suresnes Mont Valérien',
    2.2210567895582143,
    48.871689522026664,
    'U',
    'Suresnes',
    '92073',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43241',
    'IDFM:C01741',
    'U',
    'Chaville Rive Droite',
    2.1885894806735937,
    48.81299614830529,
    'U',
    'Chaville',
    '92022',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43219',
    'IDFM:C01741',
    'U',
    'Versailles Chantiers',
    2.1349078603373464,
    48.79526039893613,
    'U',
    'Versailles',
    '78646',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:461504',
    'IDFM:C01741',
    'U',
    'Saint-Quentin en Yvelines - Montigny-le-Bretonneux',
    2.044615988930814,
    48.78748491597792,
    'U',
    'Montigny-le-Bretonneux',
    '78423',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43147',
    'IDFM:C01741',
    'U',
    'La Verrière',
    1.943057018064192,
    48.7551716132828,
    'U',
    'La Verrière',
    '78644',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43091',
    'IDFM:C02711',
    'V',
    'Bièvres',
    2.2161603396773564,
    48.75087243760775,
    'V',
    'Bièvres',
    '91064',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43246',
    'IDFM:C01730',
    'P',
    'La Ferté-sous-Jouarre',
    3.124704606439104,
    48.95078183142266,
    'P',
    'La Ferté-sous-Jouarre',
    '77183',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47327',
    'IDFM:C01730',
    'P',
    'Couilly - Saint-Germain - Quincy',
    2.8541379702257133,
    48.8827095608886,
    'P',
    'Saint-Germain-sur-Morin',
    '77413',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:427872',
    'IDFM:C01730',
    'P',
    'Lagny - Thorigny',
    2.7059554888008988,
    48.8821904179895,
    'P',
    'Thorigny-sur-Marne',
    '77464',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47322',
    'IDFM:C01730',
    'P',
    'Esbly',
    2.809640025507793,
    48.902895083058525,
    'P',
    'Esbly',
    '77171',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411375',
    'IDFM:C01730',
    'P',
    'Mareuil-sur-Ourcq',
    3.0754989980809686,
    49.135381005893805,
    'P',
    'Mareuil-sur-Ourcq',
    '60380',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47158',
    'IDFM:C01730',
    'P',
    'Nangis',
    3.0121779578254295,
    48.5617195064875,
    'P',
    'Nangis',
    '77327',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43107',
    'IDFM:C01731',
    'R',
    'Chartrettes',
    2.6952691308240335,
    48.48701587175729,
    'R',
    'Chartrettes',
    '77096',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47125',
    'IDFM:C01731',
    'R',
    'Montigny-sur-Loing',
    2.738336123575285,
    48.33649861774928,
    'R',
    'Montigny-sur-Loing',
    '77312',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58955',
    'IDFM:C01731',
    'R',
    'Dordives',
    2.762658376432018,
    48.14790552423752,
    'R',
    'Dordives',
    '45127',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411482',
    'IDFM:C01731',
    'R',
    'Montargis',
    2.743201130533139,
    48.00669739961254,
    'R',
    'Montargis',
    '45208',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43157',
    'IDFM:C01736',
    'N',
    'Mantes-la-Jolie',
    1.703836824856348,
    48.989295021419494,
    'N',
    'Mantes-la-Jolie',
    '78361',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46857',
    'IDFM:C01736',
    'N',
    'Beynes',
    1.8755955719389825,
    48.860056612665424,
    'N',
    'Beynes',
    '78062',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47959',
    'IDFM:C01736',
    'N',
    'Tacoignières - Richebourg',
    1.6686619019959739,
    48.829319654250604,
    'N',
    'Tacoignières',
    '78605',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43162',
    'IDFM:C01736',
    'N',
    'Meudon',
    2.2428787225795106,
    48.81436409632574,
    'N',
    'Meudon',
    '92048',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43088',
    'IDFM:C01736',
    'N',
    'Gare de Bellevue',
    2.2299563222165655,
    48.818872981385084,
    'N',
    'Meudon',
    '92048',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43209',
    'IDFM:C01736',
    'N',
    'Trappes',
    2.0065902166898377,
    48.7747853970692,
    'N',
    'Trappes',
    '78621',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43235',
    'IDFM:C01736',
    'N',
    'Le Perray',
    1.8566531860615936,
    48.69336112490438,
    'N',
    'Le Perray-en-Yvelines',
    '78486',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47918',
    'IDFM:C01737',
    'H',
    'Auvers-sur-Oise',
    2.174916445478343,
    49.07034498316611,
    'H',
    'Auvers-sur-Oise',
    '95039',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47596',
    'IDFM:C01737',
    'H',
    'Gare Épluches',
    2.1226568963520114,
    49.055049202893706,
    'H',
    'Saint-Ouen-l''Aumône',
    '95572',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47951',
    'IDFM:C01737',
    'H',
    'Seugy',
    2.3996583056293246,
    49.11912737513361,
    'H',
    'Seugy',
    '95594',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43126',
    'IDFM:C01737',
    'H',
    'Franconville - Le Plessis-Bouchard',
    2.2341907839306554,
    48.99374640051787,
    'H',
    'Franconville',
    '95252',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43150',
    'IDFM:C01737',
    'H',
    'Saint-Ouen-l''Aumône Liesse',
    2.128124092657316,
    49.0341234164973,
    'H',
    'Saint-Ouen-l''Aumône',
    '95572',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47599',
    'IDFM:C01737',
    'H',
    'Saint-Ouen-l''Aumône',
    2.105230857870794,
    49.04530690087292,
    'H',
    'Saint-Ouen-l''Aumône',
    '95572',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43120',
    'IDFM:C01737',
    'H',
    'Domont',
    2.3371269712571614,
    49.03284003832482,
    'H',
    'Domont',
    '95199',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47517',
    'IDFM:C01737',
    'H',
    'Bouffémont - Moisselles',
    2.3229000286671555,
    49.045103567466136,
    'H',
    'Bouffémont',
    '95091',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47946',
    'IDFM:C01737',
    'H',
    'Presles - Courcelles',
    2.2878509419549213,
    49.11367528279733,
    'H',
    'Presles',
    '95504',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47530',
    'IDFM:C01737',
    'H',
    'Nointel - Mours',
    2.2799576391232472,
    49.13282894869498,
    'H',
    'Nointel',
    '95452',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47588',
    'IDFM:C01737',
    'H',
    'Valmondois',
    2.2019152338634327,
    49.09093718795672,
    'H',
    'Butry-sur-Oise',
    '95120',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:48964',
    'IDFM:C01737',
    'H',
    'Saint-Leu-la-Forêt',
    2.2428869689226687,
    49.01523840177278,
    'H',
    'Saint-Leu-la-Forêt',
    '95563',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47898',
    'IDFM:C01737',
    'H',
    'Ermont - Eaubonne',
    2.2707541014797794,
    48.98049890628609,
    'H',
    'Ermont',
    '95219',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43075',
    'IDFM:C01737',
    'H',
    'Enghien-les-Bains',
    2.3067933741682713,
    48.97288052394267,
    'H',
    'Enghien-les-Bains',
    '95210',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43078',
    'IDFM:C01737',
    'H',
    'Épinay - Villetaneuse',
    2.3287601965958715,
    48.95792884911306,
    'H',
    'Épinay-sur-Seine',
    '93031',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:462394',
    'IDFM:C01737',
    'H',
    'Gare du Nord',
    2.356693437528564,
    48.88230685842714,
    'H',
    'Paris',
    '75056',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411405',
    'IDFM:C01738',
    'K',
    'Le Plessis-Belleville',
    2.745036686332378,
    49.09632467804431,
    'K',
    'Le Plessis-Belleville',
    '60500',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46731',
    'IDFM:C01738',
    'K',
    'Compans',
    2.6649599355374893,
    48.99132968756663,
    'K',
    'Compans',
    '77123',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:54249',
    'IDFM:C01739',
    'J',
    'Les Clairières de Verneuil',
    1.9552440340828119,
    48.99266997269272,
    'J',
    'Verneuil-sur-Seine',
    '78642',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43217',
    'IDFM:C01739',
    'J',
    'Vaux-sur-Seine',
    1.9630264473162566,
    49.0073550143858,
    'J',
    'Vaux-sur-Seine',
    '78638',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47898',
    'IDFM:C01739',
    'J',
    'Ermont - Eaubonne',
    2.2707541014797794,
    48.98049890628609,
    'J',
    'Ermont',
    '95219',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:59301',
    'IDFM:C01739',
    'J',
    'Gisors',
    1.7847679942171768,
    49.285504693998305,
    'J',
    'Gisors',
    '27284',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411348',
    'IDFM:C01739',
    'J',
    'Lavilletertre',
    1.9205792747729,
    49.20238205277644,
    'J',
    'Lavilletertre',
    '60356',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47955',
    'IDFM:C01739',
    'J',
    'Saint-Ouen-l''Aumône Quartier de l''Église',
    2.1034691329132857,
    49.03909361746138,
    'J',
    'Saint-Ouen-l''Aumône',
    '95572',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43143',
    'IDFM:C01739',
    'J',
    'La Frette - Montigny',
    2.180341866372171,
    48.97988373233732,
    'J',
    'La Frette-sur-Seine',
    '95257',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58566',
    'IDFM:C01739',
    'J',
    'Gare Saint-Lazare',
    2.3244386552397684,
    48.87747568635212,
    'J',
    'Paris',
    '75056',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:473109',
    'IDFM:C01739',
    'J',
    'Maisons-Laffitte',
    2.1446722659338855,
    48.94574060746957,
    'J',
    'Maisons-Laffitte',
    '78358',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47874',
    'IDFM:C01739',
    'J',
    'Poissy',
    2.040804469960689,
    48.93324983956547,
    'J',
    'Poissy',
    '78498',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47966',
    'IDFM:C01739',
    'J',
    'Villennes-sur-Seine',
    1.999557321396041,
    48.93983138477974,
    'J',
    'Villennes-sur-Seine',
    '78672',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47881',
    'IDFM:C01739',
    'J',
    'Les Mureaux',
    1.9134674211236111,
    48.99259097971094,
    'J',
    'Les Mureaux',
    '78440',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43070',
    'IDFM:C01739',
    'J',
    'Aubergenville Élisabethville',
    1.8489603900783327,
    48.97233225408568,
    'J',
    'Aubergenville',
    '78029',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46965',
    'IDFM:C01739',
    'J',
    'Mantes Station',
    1.7151334567152097,
    48.98360892717879,
    'J',
    'Mantes-la-Jolie',
    '78361',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43248',
    'IDFM:C01740',
    'L',
    'Marly-le-Roi',
    2.0965372930677657,
    48.87152941199376,
    'L',
    'Marly-le-Roi',
    '78372',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46647',
    'IDFM:C01740',
    'L',
    'Achères Ville',
    2.0777265246565433,
    48.970643570814424,
    'L',
    'Achères',
    '78005',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43241',
    'IDFM:C01740',
    'L',
    'Chaville Rive Droite',
    2.1885894806735937,
    48.81299614830529,
    'L',
    'Chaville',
    '92022',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43112',
    'IDFM:C01740',
    'L',
    'Clichy - Levallois',
    2.2974715210323566,
    48.897501127112044,
    'L',
    'Levallois-Perret',
    '92044',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43069',
    'IDFM:C01740',
    'L',
    'Asnières-sur-Seine',
    2.2832114335873186,
    48.90587474197106,
    'L',
    'Asnières-sur-Seine',
    '92004',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43184',
    'IDFM:C01741',
    'U',
    'Puteaux',
    2.2336164976472146,
    48.8833721630466,
    'U',
    'Puteaux',
    '92062',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43136',
    'IDFM:C02711',
    'V',
    'Jouy-en-Josas',
    2.1644478368550066,
    48.764760068378486,
    'V',
    'Jouy-en-Josas',
    '78322',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463170',
    'IDFM:C01371',
    '1',
    'Esplanade de la Défense',
    2.249931086743073,
    48.88834989394862,
    '1',
    'Courbevoie',
    '92026',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22100',
    'IDFM:C01371',
    '1',
    'Les Sablons',
    2.271904762259129,
    48.88129083793358,
    '1',
    'Neuilly-sur-Seine',
    '92051',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463041',
    'IDFM:C01371',
    '1',
    'Tuileries',
    2.3296780947116416,
    48.864477839314645,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22091',
    'IDFM:C01371',
    '1',
    'Hôtel de Ville',
    2.3520676701391,
    48.85735240518587,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22113',
    'IDFM:C01372',
    '2',
    'Philippe Auguste',
    2.3905477055525735,
    48.858175121260864,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22128',
    'IDFM:C01372',
    '2',
    'Belleville',
    2.3768306915222848,
    48.872314077361665,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22120',
    'IDFM:C01372',
    '2',
    'Colonel Fabien',
    2.3705761028196575,
    48.877695345805535,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462982',
    'IDFM:C01372',
    '2',
    'La Chapelle',
    2.360430336162137,
    48.88447648340964,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463094',
    'IDFM:C01372',
    '2',
    'Barbès - Rochechouart',
    2.350573400888514,
    48.883852349861876,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463154',
    'IDFM:C01372',
    '2',
    'Courcelles',
    2.3032943624252122,
    48.87926525411311,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463256',
    'IDFM:C01372',
    '2',
    'Porte Dauphine',
    2.2778093495879346,
    48.8717351159749,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463043',
    'IDFM:C01372',
    '2',
    'Charles de Gaulle - Etoile',
    2.295927507409278,
    48.87494579313413,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462988',
    'IDFM:C01372',
    '2',
    'Villiers',
    2.3157614492393397,
    48.88121227337839,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463111',
    'IDFM:C01372',
    '2',
    'Belleville',
    2.376640589315146,
    48.87225013398613,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463210',
    'IDFM:C01373',
    '3',
    'Louise Michel',
    2.2881680068067354,
    48.88849338167193,
    '3',
    'Levallois-Perret',
    '92044',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22027',
    'IDFM:C01373',
    '3',
    'Villiers',
    2.315815092646378,
    48.88107318307563,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463069',
    'IDFM:C01373',
    '3',
    'Europe',
    2.32218591952051,
    48.87875316404477,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21906',
    'IDFM:C01373',
    '3',
    'Havre-Caumartin',
    2.3274627984235092,
    48.87346783937801,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21994',
    'IDFM:C01373',
    '3',
    'Arts et Métiers',
    2.3567233472754983,
    48.86553459885931,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463250',
    'IDFM:C01373',
    '3',
    'Parmentier',
    2.3746806763746613,
    48.865162111168765,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21950',
    'IDFM:C01373',
    '3',
    'Gambetta',
    2.397353102563538,
    48.86488271295642,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463174',
    'IDFM:C01373',
    '3',
    'Gallieni',
    2.415921484287642,
    48.86539746068654,
    '3',
    'Bagnolet',
    '93006',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462991',
    'IDFM:C01373',
    '3',
    'Gambetta',
    2.3973588775666475,
    48.86497267606974,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463286',
    'IDFM:C01373',
    '3',
    'Père Lachaise',
    2.3862311113287342,
    48.86304099836643,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463246',
    'IDFM:C01373',
    '3',
    'Opéra',
    2.331128974301561,
    48.87150983278418,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22032',
    'IDFM:C01373',
    '3',
    'Europe',
    2.3222946416498362,
    48.878780759649736,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462987',
    'IDFM:C01373',
    '3',
    'Villiers',
    2.3157901685080926,
    48.881153980760416,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22133',
    'IDFM:C01374',
    '4',
    'Simplon',
    2.347794968187123,
    48.8938152613519,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22149',
    'IDFM:C01374',
    '4',
    'Gare du Nord',
    2.356768884572096,
    48.879510553130615,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462979',
    'IDFM:C01374',
    '4',
    'Château d''Eau',
    2.3559014497805357,
    48.87247308911766,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22146',
    'IDFM:C01374',
    '4',
    'Les Halles',
    2.34600573656331,
    48.86252665962869,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22092',
    'IDFM:C01374',
    '4',
    'Châtelet',
    2.3466414308440138,
    48.859661211559086,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:26602',
    'IDFM:C01374',
    '4',
    'Mairie de Montrouge',
    2.319523835754741,
    48.818471900073675,
    '4',
    'Montrouge',
    '92049',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:483277',
    'IDFM:C01374',
    '4',
    'Barbara',
    2.3174992240284045,
    48.80979025430712,
    '4',
    'Bagneux',
    '92007',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463222',
    'IDFM:C01374',
    '4',
    'Mairie de Montrouge',
    2.3196193991237846,
    48.818454456190004,
    '4',
    'Montrouge',
    '92049',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22136',
    'IDFM:C01374',
    '4',
    'Saint-Germain-des-Prés',
    2.333947810798194,
    48.85357456382241,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22145',
    'IDFM:C01374',
    '4',
    'Odéon',
    2.339486020317896,
    48.85210334038093,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463161',
    'IDFM:C01374',
    '4',
    'Cité',
    2.347361051762225,
    48.85492106147581,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463208',
    'IDFM:C01374',
    '4',
    'Les Halles',
    2.3461273251736805,
    48.8625048403394,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22132',
    'IDFM:C01374',
    '4',
    'Marcadet - Poissonniers',
    2.3496815417224775,
    48.891280439844486,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463002',
    'IDFM:C01375',
    '5',
    'Bobigny-Pantin - Raymond Queneau',
    2.426277595760804,
    48.89563789793626,
    '5',
    'Bobigny',
    '93008',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21981',
    'IDFM:C01375',
    '5',
    'Gare d''Austerlitz',
    2.3656078807625422,
    48.84229779662816,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463059',
    'IDFM:C01375',
    '5',
    'Oberkampf',
    2.3686045625807752,
    48.86464456516527,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463280',
    'IDFM:C01375',
    '5',
    'Porte de Pantin',
    2.3921229723281483,
    48.88845921134684,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22014',
    'IDFM:C01375',
    '5',
    'Bobigny-Pantin - Raymond Queneau',
    2.426308679232036,
    48.89560207433252,
    '5',
    'Pantin',
    '93055',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22073',
    'IDFM:C01376',
    '6',
    'Nation',
    2.3958598043279085,
    48.84789550545761,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22177',
    'IDFM:C01376',
    '6',
    'Bel-Air',
    2.400867131995259,
    48.84142733223358,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463169',
    'IDFM:C01376',
    '6',
    'Daumesnil',
    2.3961460679154514,
    48.839537421644565,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462955',
    'IDFM:C01376',
    '6',
    'Montparnasse Bienvenue',
    2.3212187199903807,
    48.84213060781436,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462948',
    'IDFM:C01376',
    '6',
    'Pasteur',
    2.3129146804739396,
    48.842528387543226,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463005',
    'IDFM:C01376',
    '6',
    'Bir-Hakeim',
    2.2894007376345997,
    48.85392536837598,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22165',
    'IDFM:C01376',
    '6',
    'Passy',
    2.285839418881462,
    48.85751508962033,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22164',
    'IDFM:C01376',
    '6',
    'Trocadéro',
    2.287625377853519,
    48.86346147371448,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22179',
    'IDFM:C01376',
    '6',
    'Bir-Hakeim',
    2.2892963570634604,
    48.85388427726308,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22181',
    'IDFM:C01376',
    '6',
    'Daumesnil',
    2.396148628489371,
    48.839434008053175,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463098',
    'IDFM:C01376',
    '6',
    'Picpus',
    2.4012745388223746,
    48.84510324750185,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22380',
    'IDFM:C01377',
    '7',
    'Porte d''Italie',
    2.359462523882543,
    48.81903428608761,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463030',
    'IDFM:C01377',
    '7',
    'Porte de Choisy',
    2.3646785940494577,
    48.82005592914816,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463220',
    'IDFM:C01377',
    '7',
    'Mairie d''Ivry',
    2.383498053635828,
    48.811210093393306,
    '7',
    'Ivry-sur-Seine',
    '94041',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22373',
    'IDFM:C01377',
    '7',
    'Porte de Choisy',
    2.3646245490007405,
    48.820132089232395,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22400',
    'IDFM:C01377',
    '7',
    'Villejuif - Louis Aragon',
    2.36783901176962,
    48.78753717099888,
    '7',
    'Villejuif',
    '94076',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463231',
    'IDFM:C01377',
    '7',
    'Pont Marie (Cité des Arts)',
    2.357430292176306,
    48.85353209666315,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463031',
    'IDFM:C01377',
    '7',
    'Aubervilliers-Pantin Quatre Chemins',
    2.3922205712292195,
    48.90375706036556,
    '7',
    'Pantin',
    '93055',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22393',
    'IDFM:C01377',
    '7',
    'Fort d''Aubervilliers',
    2.404075377271855,
    48.91475665506255,
    '7',
    'Aubervilliers',
    '93001',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463295',
    'IDFM:C01377',
    '7',
    'Riquet',
    2.373669464743196,
    48.888157262065796,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22377',
    'IDFM:C01377',
    '7',
    'Poissonnière',
    2.3487397513900734,
    48.87716484925024,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22382',
    'IDFM:C01377',
    '7',
    'Le Peletier',
    2.3401505597063736,
    48.874959406040965,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22369',
    'IDFM:C01377',
    '7',
    'Sully - Morland',
    2.3617517381263218,
    48.85120791254347,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463106',
    'IDFM:C01377',
    '7',
    'Place Monge',
    2.3520055901754713,
    48.842683564383904,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463267',
    'IDFM:C01377',
    '7',
    'Tolbiac',
    2.357018567738162,
    48.82615323734341,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463224',
    'IDFM:C01377',
    '7',
    'Maison Blanche',
    2.358412946155939,
    48.82214950607496,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22189',
    'IDFM:C01378',
    '8',
    'Félix Faure',
    2.2918472203679703,
    48.84268433479664,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22195',
    'IDFM:C01378',
    '8',
    'Opéra',
    2.332135072925294,
    48.87059812248669,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463309',
    'IDFM:C01378',
    '8',
    'Saint-Sébastien - Froissart',
    2.3671254626151184,
    48.86094943927989,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463146',
    'IDFM:C01378',
    '8',
    'Chemin Vert',
    2.368095085385991,
    48.85708736782028,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22097',
    'IDFM:C01378',
    '8',
    'Bastille',
    2.3695064282002,
    48.853425461693256,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463172',
    'IDFM:C01378',
    '8',
    'Faidherbe - Chaligny',
    2.384028566383108,
    48.85011054413369,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463168',
    'IDFM:C01378',
    '8',
    'Daumesnil',
    2.395573606140371,
    48.83967393140864,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22206',
    'IDFM:C01378',
    '8',
    'Michel Bizot',
    2.40228042706469,
    48.837000553950986,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463209',
    'IDFM:C01378',
    '8',
    'Liberté',
    2.406409459132366,
    48.82608032193611,
    '8',
    'Charenton-le-Pont',
    '94018',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22211',
    'IDFM:C01378',
    '8',
    'Créteil - L''Échat',
    2.4493695956133714,
    48.79661083011156,
    '8',
    'Créteil',
    '94028',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21784',
    'IDFM:C01378',
    '8',
    'Pointe du Lac',
    2.464290193819998,
    48.768752248609914,
    '8',
    'Créteil',
    '94028',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463057',
    'IDFM:C01378',
    '8',
    'Pointe du Lac',
    2.464317312722042,
    48.76876136434425,
    '8',
    'Créteil',
    '94028',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463166',
    'IDFM:C01378',
    '8',
    'Créteil - L''Échat',
    2.449424047013373,
    48.79661108096057,
    '8',
    'Créteil',
    '94028',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22209',
    'IDFM:C01378',
    '8',
    'Liberté',
    2.4064912314699263,
    48.826148180607525,
    '8',
    'Charenton-le-Pont',
    '94018',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463050',
    'IDFM:C01378',
    '8',
    'Porte Dorée',
    2.4058739129875644,
    48.83501737409391,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22205',
    'IDFM:C01378',
    '8',
    'Montgallet',
    2.39052195642492,
    48.8440641552825,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22201',
    'IDFM:C01378',
    '8',
    'Saint-Sébastien - Froissart',
    2.367370357789606,
    48.86098670797991,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22198',
    'IDFM:C01378',
    '8',
    'Bonne Nouvelle',
    2.3485760027859746,
    48.8706347683979,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463063',
    'IDFM:C01378',
    '8',
    'Madeleine',
    2.3259702743206723,
    48.8696462363775,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22193',
    'IDFM:C01378',
    '8',
    'Invalides',
    2.3146326604445164,
    48.86109201138112,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22191',
    'IDFM:C01378',
    '8',
    'École Militaire',
    2.3063456838200764,
    48.85491966058707,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463201',
    'IDFM:C01378',
    '8',
    'La Motte-Picquet - Grenelle',
    2.298488389923641,
    48.84967105681514,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463051',
    'IDFM:C01378',
    '8',
    'Balard',
    2.2783626618092008,
    48.83666789483108,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21914',
    'IDFM:C01379',
    '9',
    'Porte de Saint-Cloud',
    2.2570461929221506,
    48.83795840561949,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21922',
    'IDFM:C01379',
    '9',
    'Michel-Ange - Auteuil',
    2.2639392129884905,
    48.84767825351756,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463325',
    'IDFM:C01379',
    '9',
    'Voltaire',
    2.3800316941488044,
    48.85766243438601,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21919',
    'IDFM:C01379',
    '9',
    'Nation',
    2.3959437210498136,
    48.84888521841715,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463039',
    'IDFM:C01379',
    '9',
    'Buzenval',
    2.401170769368413,
    48.85176243983227,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21943',
    'IDFM:C01379',
    '9',
    'Croix de Chavaux',
    2.4358546126745826,
    48.857992585158016,
    '9',
    'Montreuil',
    '93048',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463221',
    'IDFM:C01379',
    '9',
    'Mairie de Montreuil',
    2.4414386664522225,
    48.862313130940244,
    '9',
    'Montreuil',
    '93048',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463176',
    'IDFM:C01379',
    '9',
    'Croix de Chavaux',
    2.4358546126745826,
    48.857992585158016,
    '9',
    'Montreuil',
    '93048',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463049',
    'IDFM:C01379',
    '9',
    'Grands Boulevards',
    2.3432202183423976,
    48.871558801223806,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21932',
    'IDFM:C01379',
    '9',
    'Chaussée d''Antin - La Fayette',
    2.334000835220775,
    48.87288385004922,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463300',
    'IDFM:C01379',
    '9',
    'Saint-Augustin',
    2.321031570403537,
    48.874632152132925,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463190',
    'IDFM:C01379',
    '9',
    'Iéna',
    2.2938642256822708,
    48.864780022257456,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21923',
    'IDFM:C01379',
    '9',
    'Michel-Ange - Molitor',
    2.261511916905205,
    48.84491122756327,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462956',
    'IDFM:C01379',
    '9',
    'Exelmans',
    2.25967486021195,
    48.842624465259945,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463259',
    'IDFM:C01379',
    '9',
    'Porte de Saint-Cloud',
    2.2567894964207142,
    48.83799728287381,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463234',
    'IDFM:C01380',
    '10',
    'Porte d''Auteuil',
    2.258280744595537,
    48.847904123629235,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21985',
    'IDFM:C01380',
    '10',
    'Chardon Lagache',
    2.26690547594029,
    48.84508829917885,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463315',
    'IDFM:C01380',
    '10',
    'Ségur',
    2.307137849403385,
    48.847167269995026,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21977',
    'IDFM:C01380',
    '10',
    'Vaneau',
    2.321227717195941,
    48.84870050683084,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21978',
    'IDFM:C01380',
    '10',
    'Odéon',
    2.340619126473996,
    48.8519477060765,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21975',
    'IDFM:C01380',
    '10',
    'Maubert - Mutualité',
    2.348219343927666,
    48.85010969451494,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462994',
    'IDFM:C01380',
    '10',
    'Mabillon',
    2.3350868179946915,
    48.85296034336302,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21988',
    'IDFM:C01380',
    '10',
    'Boulogne Jean Jaurès',
    2.239042669312605,
    48.842063301935575,
    '10',
    'Boulogne-Billancourt',
    '92012',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21998',
    'IDFM:C01381',
    '11',
    'Belleville',
    2.376753738418521,
    48.871908975367674,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463192',
    'IDFM:C01381',
    '11',
    'Jourdain',
    2.389325378910096,
    48.875247348641416,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463319',
    'IDFM:C01381',
    '11',
    'Télégraphe',
    2.3986752529487725,
    48.875519513947125,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490787',
    'IDFM:C01381',
    '11',
    'Serge Gainsbourg',
    2.427162663175348,
    48.881208070541476,
    '11',
    'Les Lilas',
    '93045',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490766',
    'IDFM:C01381',
    '11',
    'Montreuil - Hôpital',
    2.454682210916966,
    48.87833284108111,
    '11',
    'Noisy-le-Sec',
    '93053',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21966',
    'IDFM:C01381',
    '11',
    'Châtelet',
    2.3478374055687867,
    48.85776111354502,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:483904',
    'IDFM:C01382',
    '12',
    'Mairie d''Aubervilliers',
    2.3807826993163266,
    48.913739225808136,
    '12',
    'Aubervilliers',
    '93001',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463236',
    'IDFM:C01382',
    '12',
    'Marx Dormoy',
    2.359808478084024,
    48.89057957856722,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22054',
    'IDFM:C01382',
    '12',
    'Jules Joffrin',
    2.3443200293804827,
    48.892492268201934,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463116',
    'IDFM:C01382',
    '12',
    'Abbesses',
    2.338394635220906,
    48.884392717991425,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463164',
    'IDFM:C01382',
    '12',
    'Concorde',
    2.323058362902906,
    48.8661808158217,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463311',
    'IDFM:C01382',
    '12',
    'Solférino',
    2.3230759642515415,
    48.85853194972854,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22049',
    'IDFM:C01382',
    '12',
    'Rennes',
    2.3277871847873874,
    48.84833282904063,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22051',
    'IDFM:C01382',
    '12',
    'Notre-Dame des Champs',
    2.328564944227944,
    48.84508150807547,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22039',
    'IDFM:C01382',
    '12',
    'Pasteur',
    2.312554745666783,
    48.842958015471986,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22047',
    'IDFM:C01382',
    '12',
    'Vaugirard',
    2.3010745156545456,
    48.839437918076904,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22057',
    'IDFM:C01382',
    '12',
    'Concorde',
    2.323181449571859,
    48.86615003482594,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463062',
    'IDFM:C01382',
    '12',
    'Notre-Dame-de-Lorette',
    2.3379007718233322,
    48.87604417483004,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:483898',
    'IDFM:C01382',
    '12',
    'Mairie d''Aubervilliers',
    2.3808510232809863,
    48.91373058592168,
    '12',
    'Aubervilliers',
    '93001',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22242',
    'IDFM:C01383',
    '13',
    'Saint-Denis - Université',
    2.3644942905103172,
    48.945911458883856,
    '13',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462977',
    'IDFM:C01383',
    '13',
    'Garibaldi',
    2.331907872638921,
    48.90638108007163,
    '13',
    'Saint-Ouen-sur-Seine',
    '93070',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462975',
    'IDFM:C01383',
    '13',
    'La Fourche',
    2.3257141171661355,
    48.88743365673691,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22223',
    'IDFM:C01383',
    '13',
    'Plaisance',
    2.313833364032832,
    48.83174121370108,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22244',
    'IDFM:C01383',
    '13',
    'Garibaldi',
    2.331962553647662,
    48.906372391923206,
    '13',
    'Saint-Ouen-sur-Seine',
    '93070',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463126',
    'IDFM:C01383',
    '13',
    'Basilique de Saint-Denis',
    2.359431626687363,
    48.9367747982655,
    '13',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22222',
    'IDFM:C01383',
    '13',
    'Pernety',
    2.318393706614701,
    48.834078679774976,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22230',
    'IDFM:C01383',
    '13',
    'Gaîté',
    2.322463569405974,
    48.83854469308166,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22229',
    'IDFM:C01383',
    '13',
    'Duroc',
    2.3165212194565217,
    48.847009893611975,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490835',
    'IDFM:C01384',
    '14',
    'Chevilly-Larue​ (Marché International​)',
    2.3674425092258047,
    48.758492915434516,
    '14',
    'Chevilly-Larue',
    '94021',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490850',
    'IDFM:C01384',
    '14',
    'L''Haÿ-les-Roses',
    2.355032032091648,
    48.775326684341785,
    '14',
    'L''Haÿ-les-Roses',
    '94038',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490849',
    'IDFM:C01384',
    '14',
    'Hôpital Bicêtre',
    2.350014950529505,
    48.80994448106093,
    '14',
    'Le Kremlin-Bicêtre',
    '94043',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463064',
    'IDFM:C01384',
    '14',
    'Madeleine',
    2.3258757399808627,
    48.870630484228144,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21962',
    'IDFM:C01384',
    '14',
    'Saint-Lazare',
    2.324122029700433,
    48.87560743718584,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490774',
    'IDFM:C01384',
    '14',
    'Saint-Denis - Pleyel',
    2.3457474221109633,
    48.91891285848584,
    '14',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:480286',
    'IDFM:C01384',
    '14',
    'Pont Cardinet',
    2.3151908648850013,
    48.888102389888395,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21954',
    'IDFM:C01384',
    '14',
    'Olympiades',
    2.3669231215308075,
    48.827123441429386,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490908',
    'IDFM:C01384',
    '14',
    'Aéroport d''Orly',
    2.362102529020536,
    48.727919520945235,
    '14',
    'Paray-Vieille-Poste',
    '91479',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21945',
    'IDFM:C01386',
    '3B',
    'Gambetta',
    2.398537305704572,
    48.865032564464,
    '3B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463262',
    'IDFM:C01386',
    '3B',
    'Porte des Lilas',
    2.4069512666209,
    48.87663999703494,
    '3B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463071',
    'IDFM:C01386',
    '3B',
    'Saint-Fargeau',
    2.404361344448241,
    48.871887658077014,
    '3B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:24684',
    'IDFM:C01387',
    '7B',
    'Pré-Saint-Gervais',
    2.398580770693528,
    48.8801595806643,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463121',
    'IDFM:C01371',
    '1',
    'Argentine',
    2.289435418542214,
    48.87566737659971,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22084',
    'IDFM:C01371',
    '1',
    'George V',
    2.300759784978918,
    48.87203776458909,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22079',
    'IDFM:C01371',
    '1',
    'Palais Royal - Musée du Louvre',
    2.3364543677542517,
    48.86222226557415,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22074',
    'IDFM:C01371',
    '1',
    'Saint-Paul (Le Marais)',
    2.3608852562751967,
    48.85518742160445,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22080',
    'IDFM:C01371',
    '1',
    'Nation',
    2.3958439887237373,
    48.848084289973976,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22104',
    'IDFM:C01371',
    '1',
    'Château de Vincennes',
    2.440540095406114,
    48.84431751431355,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463160',
    'IDFM:C01371',
    '1',
    'Châtelet',
    2.3458090025909044,
    48.85930591756934,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463218',
    'IDFM:C01371',
    '1',
    'Louvre - Rivoli',
    2.3409964272720227,
    48.86090733426327,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463010',
    'IDFM:C01371',
    '1',
    'Champs-Élysées - Clemenceau',
    2.314464501322781,
    48.86765629219383,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463185',
    'IDFM:C01371',
    '1',
    'George V',
    2.300759784978918,
    48.87203776458909,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22099',
    'IDFM:C01371',
    '1',
    'Pont de Neuilly',
    2.2584954293691255,
    48.885489388974705,
    '1',
    'Neuilly-sur-Seine',
    '92051',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22102',
    'IDFM:C01371',
    '1',
    'Esplanade de la Défense',
    2.2499040727323307,
    48.88833173800946,
    '1',
    'Courbevoie',
    '92026',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463193',
    'IDFM:C01371',
    '1',
    'La Défense (Grande Arche)',
    2.2383579200010373,
    48.89199558886802,
    '1',
    'Puteaux',
    '92062',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463009',
    'IDFM:C01372',
    '2',
    'Stalingrad',
    2.3657743705581695,
    48.88432054886986,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463113',
    'IDFM:C01372',
    '2',
    'Blanche',
    2.3324843754343627,
    48.88376635447715,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22106',
    'IDFM:C01372',
    '2',
    'Villiers',
    2.3157165772440385,
    48.88130644704797,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22121',
    'IDFM:C01372',
    '2',
    'Courcelles',
    2.3032943624252122,
    48.87926525411311,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22110',
    'IDFM:C01372',
    '2',
    'Rome',
    2.3214039779193896,
    48.882256139435015,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22115',
    'IDFM:C01372',
    '2',
    'Place de Clichy',
    2.3279583280102196,
    48.88366908827266,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22127',
    'IDFM:C01372',
    '2',
    'Barbès - Rochechouart',
    2.3506070793550977,
    48.88377608955688,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462981',
    'IDFM:C01372',
    '2',
    'Jaurès',
    2.3701539703369967,
    48.881596221131936,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462984',
    'IDFM:C01372',
    '2',
    'Colonel Fabien',
    2.370467574793864,
    48.87764980852146,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463285',
    'IDFM:C01372',
    '2',
    'Père Lachaise',
    2.3875798912544455,
    48.86244984493746,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463125',
    'IDFM:C01372',
    '2',
    'Avron',
    2.3980666384995177,
    48.85161645805963,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463119',
    'IDFM:C01373',
    '3',
    'Anatole France',
    2.2848122193525104,
    48.89223258539651,
    '3',
    'Levallois-Perret',
    '92044',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22024',
    'IDFM:C01373',
    '3',
    'Quatre Septembre',
    2.3362786423248583,
    48.86959592111917,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462986',
    'IDFM:C01373',
    '3',
    'Sentier',
    2.3475137108219895,
    48.86728343166051,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463091',
    'IDFM:C01373',
    '3',
    'Réaumur - Sébastopol',
    2.3520239377964742,
    48.86628268363084,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22022',
    'IDFM:C01373',
    '3',
    'Porte de Bagnolet',
    2.4088234090802456,
    48.86432836987192,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22026',
    'IDFM:C01373',
    '3',
    'Temple',
    2.361561234526356,
    48.86675662943444,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463189',
    'IDFM:C01373',
    '3',
    'Havre-Caumartin',
    2.32755854621969,
    48.8735493178711,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463068',
    'IDFM:C01373',
    '3',
    'Malesherbes',
    2.309487846960011,
    48.88284002257779,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463070',
    'IDFM:C01373',
    '3',
    'Wagram',
    2.304673087584434,
    48.8838463907272,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22036',
    'IDFM:C01373',
    '3',
    'Anatole France',
    2.2849816963403193,
    48.892206617614,
    '3',
    'Levallois-Perret',
    '92044',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22150',
    'IDFM:C01374',
    '4',
    'Cité',
    2.3472322349319112,
    48.85493384910671,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22144',
    'IDFM:C01374',
    '4',
    'Mouton-Duvernet',
    2.32979034782274,
    48.831382009093616,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:483314',
    'IDFM:C01374',
    '4',
    'Bagneux - Lucie Aubrac',
    2.317458362049886,
    48.80354822259104,
    '4',
    'Bagneux',
    '92007',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463092',
    'IDFM:C01374',
    '4',
    'Porte d''Orléans',
    2.325623760353114,
    48.823394602620716,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463242',
    'IDFM:C01374',
    '4',
    'Mouton-Duvernet',
    2.329887640408421,
    48.83133758557153,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463291',
    'IDFM:C01374',
    '4',
    'Raspail',
    2.3307802165662403,
    48.83910415024143,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22147',
    'IDFM:C01374',
    '4',
    'Etienne Marcel',
    2.3489761968791085,
    48.86370301202431,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22152',
    'IDFM:C01374',
    '4',
    'Château Rouge',
    2.3495819680256593,
    48.887241930648955,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463310',
    'IDFM:C01374',
    '4',
    'Simplon',
    2.347794968187123,
    48.8938152613519,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22141',
    'IDFM:C01374',
    '4',
    'Porte de Clignancourt',
    2.3447472731828847,
    48.897557781418705,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22015',
    'IDFM:C01375',
    '5',
    'Bobigny Pablo Picasso',
    2.4490271414582585,
    48.9063655341063,
    '5',
    'Bobigny',
    '93008',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22005',
    'IDFM:C01375',
    '5',
    'Ourcq',
    2.3866765356019912,
    48.88714990283661,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22007',
    'IDFM:C01375',
    '5',
    'Gare du Nord',
    2.3572164888604563,
    48.87970181695894,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22006',
    'IDFM:C01375',
    '5',
    'Place d''Italie',
    2.35559694336975,
    48.83096622708413,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22010',
    'IDFM:C01375',
    '5',
    'Bastille',
    2.368922075646989,
    48.85328747830434,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21952',
    'IDFM:C01375',
    '5',
    'Jaurès',
    2.371438959985608,
    48.88302391342934,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22012',
    'IDFM:C01375',
    '5',
    'Laumière',
    2.3793909893523923,
    48.88513384808583,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463027',
    'IDFM:C01375',
    '5',
    'Ourcq',
    2.386652016759884,
    48.88691595319499,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463288',
    'IDFM:C01376',
    '6',
    'Quai de la Gare',
    2.372766248948172,
    48.8370742706096,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463003',
    'IDFM:C01376',
    '6',
    'Place d''Italie',
    2.3560502682264337,
    48.830991153013954,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22173',
    'IDFM:C01376',
    '6',
    'Glacière',
    2.3434974927179884,
    48.831170235245835,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22176',
    'IDFM:C01376',
    '6',
    'Cambronne',
    2.3029417283376117,
    48.84754311219352,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463194',
    'IDFM:C01376',
    '6',
    'La Motte-Picquet - Grenelle',
    2.298957096977008,
    48.848765448122315,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463114',
    'IDFM:C01376',
    '6',
    'Boissière',
    2.2900328376074373,
    48.8668483434173,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463042',
    'IDFM:C01376',
    '6',
    'Charles de Gaulle - Etoile',
    2.2947520493673434,
    48.87371127132366,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22170',
    'IDFM:C01376',
    '6',
    'Kléber',
    2.293146137248626,
    48.87148941293503,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463292',
    'IDFM:C01376',
    '6',
    'Raspail',
    2.3304144712354793,
    48.8390661288004,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463103',
    'IDFM:C01376',
    '6',
    'Denfert-Rochereau',
    2.332803776289825,
    48.83424986732888,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22178',
    'IDFM:C01376',
    '6',
    'Bercy',
    2.379463070185257,
    48.840176028121896,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22397',
    'IDFM:C01377',
    '7',
    'Pierre et Marie Curie',
    2.377246886036494,
    48.815836500997094,
    '7',
    'Ivry-sur-Seine',
    '94041',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463323',
    'IDFM:C01377',
    '7',
    'Villejuif Léo Lagrange',
    2.364068547658874,
    48.80436739901952,
    '7',
    'Villejuif',
    '94076',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463026',
    'IDFM:C01377',
    '7',
    'Place d''Italie',
    2.355330902236442,
    48.83154938471729,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22391',
    'IDFM:C01377',
    '7',
    'Censier - Daubenton',
    2.351626572605499,
    48.84022624851393,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22366',
    'IDFM:C01377',
    '7',
    'Place Monge',
    2.3521548685787708,
    48.842666385642886,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22386',
    'IDFM:C01377',
    '7',
    'Jussieu',
    2.354798309820857,
    48.84596333903808,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463249',
    'IDFM:C01377',
    '7',
    'Palais Royal - Musée du Louvre',
    2.3370872868854393,
    48.86276538184415,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463245',
    'IDFM:C01377',
    '7',
    'Opéra',
    2.332572085877118,
    48.870326260852515,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22390',
    'IDFM:C01377',
    '7',
    'Cadet',
    2.344446309702274,
    48.875963285075564,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463255',
    'IDFM:C01377',
    '7',
    'Poissonnière',
    2.3487939912846394,
    48.877079707510546,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463001',
    'IDFM:C01377',
    '7',
    'Gare de l''Est',
    2.358120525273069,
    48.876271214541624,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22367',
    'IDFM:C01377',
    '7',
    'Château Landon',
    2.3620179355106075,
    48.87844145573239,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22368',
    'IDFM:C01377',
    '7',
    'Stalingrad',
    2.368996070723285,
    48.88431508830977,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463200',
    'IDFM:C01377',
    '7',
    'La Courneuve - 8 Mai 1945',
    2.410008476572451,
    48.92037064946693,
    '7',
    'La Courneuve',
    '93027',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22394',
    'IDFM:C01377',
    '7',
    'Aubervilliers-Pantin Quatre Chemins',
    2.3921143824978492,
    48.90379699038963,
    '7',
    'Aubervilliers',
    '93001',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22392',
    'IDFM:C01377',
    '7',
    'Crimée',
    2.37693573698238,
    48.8908857589288,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463145',
    'IDFM:C01377',
    '7',
    'Chaussée d''Antin - La Fayette',
    2.333669568112413,
    48.873201272012516,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22378',
    'IDFM:C01377',
    '7',
    'Pont Marie (Cité des Arts)',
    2.357349968447059,
    48.85341474936241,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463078',
    'IDFM:C01377',
    '7',
    'Jussieu',
    2.354798309820857,
    48.84596333903808,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463324',
    'IDFM:C01377',
    '7',
    'Villejuif Paul Vaillant-Couturier',
    2.368195583812103,
    48.79630822122641,
    '7',
    'Villejuif',
    '94076',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22186',
    'IDFM:C01378',
    '8',
    'Balard',
    2.2785093588069993,
    48.836650792286115,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463162',
    'IDFM:C01378',
    '8',
    'Commerce',
    2.293851708440619,
    48.84458485524012,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22096',
    'IDFM:C01378',
    '8',
    'Concorde',
    2.3220315426557194,
    48.86652125193945,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463115',
    'IDFM:C01378',
    '8',
    'Bonne Nouvelle',
    2.348496122542364,
    48.87048144580479,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22207',
    'IDFM:C01378',
    '8',
    'Porte Dorée',
    2.405749381400099,
    48.8350662204656,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22216',
    'IDFM:C01378',
    '8',
    'Maisons-Alfort - Les Juilliottes',
    2.4457883063759605,
    48.80310585036659,
    '8',
    'Maisons-Alfort',
    '94046',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463056',
    'IDFM:C01378',
    '8',
    'Créteil - Préfecture',
    2.4593051692912615,
    48.77975652677895,
    '8',
    'Créteil',
    '94028',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463047',
    'IDFM:C01378',
    '8',
    'Ecole Vétérinaire de Maisons-Alfort',
    2.422399525054415,
    48.81483550210013,
    '8',
    'Maisons-Alfort',
    '94046',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463142',
    'IDFM:C01378',
    '8',
    'Charenton - Écoles',
    2.413844709558796,
    48.82148073316996,
    '8',
    'Charenton-le-Pont',
    '94018',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463000',
    'IDFM:C01378',
    '8',
    'Bastille',
    2.369652217650188,
    48.85348468769834,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463211',
    'IDFM:C01378',
    '8',
    'Lourmel',
    2.2820358715985742,
    48.838785539019476,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21915',
    'IDFM:C01379',
    '9',
    'Ranelagh',
    2.270032697561899,
    48.855306214887065,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21917',
    'IDFM:C01379',
    '9',
    'Trocadéro',
    2.28683987979629,
    48.863088061116,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21927',
    'IDFM:C01379',
    '9',
    'Iéna',
    2.293906396859107,
    48.864685839288676,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463180',
    'IDFM:C01379',
    '9',
    'Franklin D. Roosevelt',
    2.3095735420193506,
    48.86866242617973,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462957',
    'IDFM:C01379',
    '9',
    'Miromesnil',
    2.3146768238242688,
    48.87369210197914,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21910',
    'IDFM:C01379',
    '9',
    'Saint-Ambroise',
    2.3738805382115475,
    48.86141665790915,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463215',
    'IDFM:C01379',
    '9',
    'Maraîchers',
    2.4060490065790447,
    48.85265013095636,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463279',
    'IDFM:C01379',
    '9',
    'Porte de Montreuil',
    2.410718154027495,
    48.85348263120656,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21913',
    'IDFM:C01379',
    '9',
    'Porte de Montreuil',
    2.4107036110235414,
    48.853563500943025,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21936',
    'IDFM:C01379',
    '9',
    'Maraîchers',
    2.406038544798052,
    48.85273102047999,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21934',
    'IDFM:C01379',
    '9',
    'Charonne',
    2.3848878986690423,
    48.85500743705073,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463264',
    'IDFM:C01379',
    '9',
    'Strasbourg - Saint-Denis',
    2.3538223820093616,
    48.86950305730265,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21924',
    'IDFM:C01379',
    '9',
    'Miromesnil',
    2.3146430401104467,
    48.8737728492328,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21931',
    'IDFM:C01379',
    '9',
    'Franklin D. Roosevelt',
    2.309488192337113,
    48.86872488799857,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21929',
    'IDFM:C01379',
    '9',
    'La Muette',
    2.2740962446697224,
    48.85809196689865,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463038',
    'IDFM:C01379',
    '9',
    'Jasmin',
    2.267933291647067,
    48.85243341872557,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463035',
    'IDFM:C01379',
    '9',
    'Billancourt',
    2.237891101038026,
    48.83191997405451,
    '9',
    'Boulogne-Billancourt',
    '92012',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463233',
    'IDFM:C01379',
    '9',
    'Pont de Sèvres',
    2.2305052170885546,
    48.82966919074605,
    '9',
    'Boulogne-Billancourt',
    '92012',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462958',
    'IDFM:C01380',
    '10',
    'Javel - André Citroën',
    2.2780435059854063,
    48.846086877931405,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21986',
    'IDFM:C01380',
    '10',
    'Charles Michels',
    2.2856243417995747,
    48.84636172348247,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463202',
    'IDFM:C01380',
    '10',
    'La Motte-Picquet - Grenelle',
    2.298684579816939,
    48.849532805857095,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463084',
    'IDFM:C01380',
    '10',
    'Duroc',
    2.3162843486517035,
    48.84668027285166,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21967',
    'IDFM:C01380',
    '10',
    'Gare d''Austerlitz',
    2.3645307640842486,
    48.842355035073275,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21969',
    'IDFM:C01380',
    '10',
    'La Motte-Picquet - Grenelle',
    2.2985257262366363,
    48.84963080443241,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21972',
    'IDFM:C01380',
    '10',
    'Javel - André Citroën',
    2.278009496527359,
    48.84618110622323,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21907',
    'IDFM:C01380',
    '10',
    'Michel-Ange - Auteuil',
    2.263989525333329,
    48.84797535417627,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21974',
    'IDFM:C01380',
    '10',
    'Porte d''Auteuil',
    2.2582639186231943,
    48.84812886119474,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463079',
    'IDFM:C01381',
    '11',
    'Châtelet',
    2.347759259772123,
    48.8576887395772,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463223',
    'IDFM:C01381',
    '11',
    'Mairie des Lilas',
    2.4163499077398614,
    48.879658467973904,
    '11',
    'Les Lilas',
    '93045',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490764',
    'IDFM:C01381',
    '11',
    'Romainville-Carnot',
    2.440689824547642,
    48.88369120755144,
    '11',
    'Romainville',
    '93063',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463263',
    'IDFM:C01381',
    '11',
    'Porte des Lilas',
    2.4065226763982275,
    48.87723143067265,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21993',
    'IDFM:C01381',
    '11',
    'Télégraphe',
    2.3986480899605933,
    48.87551038418075,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21996',
    'IDFM:C01381',
    '11',
    'Goncourt',
    2.3707644347484003,
    48.8700070178386,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463061',
    'IDFM:C01381',
    '11',
    'Hôtel de Ville',
    2.3514239919428728,
    48.85760073633446,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22055',
    'IDFM:C01382',
    '12',
    'Lamarck - Caulaincourt',
    2.338463589982122,
    48.889699132276796,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21964',
    'IDFM:C01382',
    '12',
    'Saint-Lazare',
    2.3274477500193202,
    48.875689121953926,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462950',
    'IDFM:C01382',
    '12',
    'Rue du Bac',
    2.3256998984524113,
    48.85588467848543,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462964',
    'IDFM:C01382',
    '12',
    'Volontaires',
    2.3079137063600563,
    48.84152824313428,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463153',
    'IDFM:C01382',
    '12',
    'Corentin Celton',
    2.2789586605256367,
    48.826823295159116,
    '12',
    'Issy-les-Moulineaux',
    '92040',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22062',
    'IDFM:C01382',
    '12',
    'Mairie d''Issy',
    2.273560674093182,
    48.82416442588802,
    '12',
    'Issy-les-Moulineaux',
    '92040',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22058',
    'IDFM:C01382',
    '12',
    'Convention',
    2.2963642614342694,
    48.837125900520995,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22048',
    'IDFM:C01382',
    '12',
    'Volontaires',
    2.3079833805768515,
    48.84141172841498,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462980',
    'IDFM:C01382',
    '12',
    'Montparnasse Bienvenue',
    2.32392211008296,
    48.84374228942691,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463301',
    'IDFM:C01383',
    '13',
    'Saint-Denis - Porte de Paris',
    2.3561729251015997,
    48.929922750445755,
    '13',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463109',
    'IDFM:C01383',
    '13',
    'Asnières - Gennevilliers Les Courtilles',
    2.284216775386713,
    48.930544259451466,
    '13',
    'Gennevilliers',
    '92036',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463278',
    'IDFM:C01383',
    '13',
    'Porte de Clichy',
    2.31320835075881,
    48.89443128801746,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463253',
    'IDFM:C01383',
    '13',
    'Place de Clichy',
    2.327268983025867,
    48.883723673452664,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463083',
    'IDFM:C01383',
    '13',
    'Duroc',
    2.316535081176305,
    48.84699198555429,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22235',
    'IDFM:C01383',
    '13',
    'Malakoff - Plateau de Vanves',
    2.298295381702497,
    48.82220756804045,
    '13',
    'Malakoff',
    '92046',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463087',
    'IDFM:C01383',
    '13',
    'Châtillon-Montrouge',
    2.301595459041787,
    48.81072820779425,
    '13',
    'Châtillon',
    '92020',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462952',
    'IDFM:C01383',
    '13',
    'Guy Môquet',
    2.327483258626126,
    48.8930014419616,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22220',
    'IDFM:C01383',
    '13',
    'Porte de Saint-Ouen',
    2.3290483407446505,
    48.89749783732745,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463085',
    'IDFM:C01383',
    '13',
    'Plaisance',
    2.313860489344306,
    48.83175036306747,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22217',
    'IDFM:C01383',
    '13',
    'Saint-François-Xavier',
    2.314407403528732,
    48.8512787565696,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22129',
    'IDFM:C01383',
    '13',
    'Place de Clichy',
    2.327398345647013,
    48.883737890227636,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22227',
    'IDFM:C01383',
    '13',
    'La Fourche',
    2.3256869607667356,
    48.887424510518066,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22238',
    'IDFM:C01383',
    '13',
    'Mairie de Clichy',
    2.3058484063578857,
    48.90349897462669,
    '13',
    'Clichy',
    '92024',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22233',
    'IDFM:C01383',
    '13',
    'Asnières - Gennevilliers Les Courtilles',
    2.284372100658843,
    48.93060364140038,
    '13',
    'Gennevilliers',
    '92036',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490916',
    'IDFM:C01384',
    '14',
    'Villejuif - Gustave Roussy',
    2.3492565855239396,
    48.79323857984506,
    '14',
    'Villejuif',
    '94076',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463112',
    'IDFM:C01384',
    '14',
    'Bibliothèque François Mitterrand',
    2.376487371168301,
    48.829925765928905,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463165',
    'IDFM:C01384',
    '14',
    'Cour Saint-Emilion',
    2.386617850214058,
    48.833319303843425,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463159',
    'IDFM:C01384',
    '14',
    'Châtelet',
    2.346411849769497,
    48.859556532726764,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:480330',
    'IDFM:C01384',
    '14',
    'Mairie de Saint-Ouen',
    2.3335458072132695,
    48.91164217552501,
    '14',
    'Saint-Ouen-sur-Seine',
    '93070',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462972',
    'IDFM:C01384',
    '14',
    'Saint-Lazare',
    2.3240258961246782,
    48.875660854671985,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21959',
    'IDFM:C01384',
    '14',
    'Châtelet',
    2.346275248188987,
    48.85951531585984,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21956',
    'IDFM:C01384',
    '14',
    'Cour Saint-Emilion',
    2.386464909364189,
    48.83334999725014,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490839',
    'IDFM:C01384',
    '14',
    'Hôpital Bicêtre',
    2.349946533239157,
    48.809971090725966,
    '14',
    'Le Kremlin-Bicêtre',
    '94043',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:24681',
    'IDFM:C01387',
    '7B',
    'Louis Blanc',
    2.364424862493678,
    48.88120621182599,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463156',
    'IDFM:C01387',
    '7B',
    'Buttes Chaumont',
    2.381632921459486,
    48.878422971131464,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22101',
    'IDFM:C01371',
    '1',
    'La Défense (Grande Arche)',
    2.2379881830988277,
    48.89181786646099,
    '1',
    'Puteaux',
    '92062',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22085',
    'IDFM:C01371',
    '1',
    'Concorde',
    2.3228909937191604,
    48.866472156532026,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22087',
    'IDFM:C01371',
    '1',
    'Châtelet',
    2.3457609541847755,
    48.85922471342816,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463019',
    'IDFM:C01371',
    '1',
    'Bastille',
    2.368692796099789,
    48.85196422011205,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22105',
    'IDFM:C01371',
    '1',
    'Bérault',
    2.4292049740990573,
    48.84540614839331,
    '1',
    'Vincennes',
    '94080',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463040',
    'IDFM:C01371',
    '1',
    'Saint-Mandé',
    2.4189897063438073,
    48.84622934735893,
    '1',
    'Saint-Mandé',
    '94067',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463012',
    'IDFM:C01371',
    '1',
    'Porte de Vincennes',
    2.4108049967015006,
    48.84700773108863,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463307',
    'IDFM:C01371',
    '1',
    'Saint-Paul (Le Marais)',
    2.3609713728017505,
    48.85527781668134,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463013',
    'IDFM:C01371',
    '1',
    'Charles de Gaulle - Etoile',
    2.2951172138230334,
    48.87392926445533,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22126',
    'IDFM:C01372',
    '2',
    'Couronnes',
    2.3805336747351005,
    48.86932051914457,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463252',
    'IDFM:C01372',
    '2',
    'Place de Clichy',
    2.3278987090661456,
    48.88374519677981,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463266',
    'IDFM:C01372',
    '2',
    'Ternes',
    2.2981132886172433,
    48.878227730862385,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22109',
    'IDFM:C01372',
    '2',
    'Victor Hugo',
    2.2859020006220643,
    48.8698545716049,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22108',
    'IDFM:C01372',
    '2',
    'Ternes',
    2.2981136521983068,
    48.8782007528283,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22119',
    'IDFM:C01372',
    '2',
    'La Chapelle',
    2.3604041692740987,
    48.884386410852784,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22107',
    'IDFM:C01372',
    '2',
    'Stalingrad',
    2.365751439124989,
    48.884243984567746,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463230',
    'IDFM:C01372',
    '2',
    'Philippe Auguste',
    2.390497596745289,
    48.858089428135756,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463067',
    'IDFM:C01372',
    '2',
    'Nation',
    2.395925559927623,
    48.848453436979646,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463258',
    'IDFM:C01373',
    '3',
    'Porte de Champerret',
    2.2921124821588448,
    48.885652393133846,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22021',
    'IDFM:C01373',
    '3',
    'Pereire',
    2.2976831860125837,
    48.88484432273985,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463297',
    'IDFM:C01373',
    '3',
    'Rue Saint-Maur',
    2.3804600339610773,
    48.86405000324374,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463276',
    'IDFM:C01373',
    '3',
    'Porte de Bagnolet',
    2.4087542211895427,
    48.86453937293447,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22018',
    'IDFM:C01373',
    '3',
    'Réaumur - Sébastopol',
    2.3520507871028355,
    48.86638175675157,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22033',
    'IDFM:C01373',
    '3',
    'Bourse',
    2.3406785469758815,
    48.868792843933164,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21963',
    'IDFM:C01373',
    '3',
    'Saint-Lazare',
    2.3246067760696794,
    48.875025603040974,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463228',
    'IDFM:C01373',
    '3',
    'Pereire',
    2.297701123838181,
    48.884929864637186,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22034',
    'IDFM:C01373',
    '3',
    'Louise Michel',
    2.2882778490679767,
    48.88853900119613,
    '3',
    'Levallois-Perret',
    '92044',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463016',
    'IDFM:C01374',
    '4',
    'Vavin',
    2.3288628540691043,
    48.84205232329236,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463104',
    'IDFM:C01374',
    '4',
    'Denfert-Rochereau',
    2.332018835216387,
    48.83394869369227,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22154',
    'IDFM:C01374',
    '4',
    'Alésia',
    2.3270932349484528,
    48.82820106421924,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:483279',
    'IDFM:C01374',
    '4',
    'Bagneux - Lucie Aubrac',
    2.3173900542429133,
    48.80356582047439,
    '4',
    'Bagneux',
    '92007',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22135',
    'IDFM:C01374',
    '4',
    'Vavin',
    2.32902391746117,
    48.842242093452064,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462992',
    'IDFM:C01374',
    '4',
    'Saint-Sulpice',
    2.330953550650454,
    48.85113858957915,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463178',
    'IDFM:C01375',
    '5',
    'Église de Pantin',
    2.413074999597678,
    48.89324469416795,
    '5',
    'Pantin',
    '93055',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22003',
    'IDFM:C01375',
    '5',
    'Porte de Pantin',
    2.3920607143419303,
    48.888535337600175,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463095',
    'IDFM:C01375',
    '5',
    'Jaurès',
    2.371383333112514,
    48.88311355416086,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463191',
    'IDFM:C01375',
    '5',
    'Jacques Bonsergent',
    2.361023902048923,
    48.870620926265296,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21903',
    'IDFM:C01375',
    '5',
    'République',
    2.3640990472225725,
    48.867687468165165,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22002',
    'IDFM:C01375',
    '5',
    'Richard-Lenoir',
    2.371813630476951,
    48.859876937868705,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22008',
    'IDFM:C01375',
    '5',
    'Bréguet-Sabin',
    2.3701946685897517,
    48.85624405468632,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463289',
    'IDFM:C01375',
    '5',
    'Quai de la Rapée',
    2.365884650750405,
    48.846427325479766,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463025',
    'IDFM:C01375',
    '5',
    'Place d''Italie',
    2.355501591481485,
    48.830965713292656,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463020',
    'IDFM:C01375',
    '5',
    'Campo-Formio',
    2.3587419566993457,
    48.83554293374935,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463096',
    'IDFM:C01375',
    '5',
    'Richard-Lenoir',
    2.3719501400872653,
    48.85985966744055,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22011',
    'IDFM:C01375',
    '5',
    'Jacques Bonsergent',
    2.3611315892483544,
    48.870666468034706,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22013',
    'IDFM:C01375',
    '5',
    'Gare de l''Est',
    2.35806459441865,
    48.87616299446643,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22017',
    'IDFM:C01375',
    '5',
    'Hoche',
    2.4032119887626737,
    48.89128939386479,
    '5',
    'Pantin',
    '93055',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22016',
    'IDFM:C01375',
    '5',
    'Église de Pantin',
    2.413119553706935,
    48.893163974098265,
    '5',
    'Pantin',
    '93055',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463075',
    'IDFM:C01376',
    '6',
    'Dugommier',
    2.3895997700798097,
    48.83903652832887,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22175',
    'IDFM:C01376',
    '6',
    'Corvisart',
    2.350611225926166,
    48.82986001331238,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22158',
    'IDFM:C01376',
    '6',
    'Denfert-Rochereau',
    2.3328724454976864,
    48.83431320632965,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22172',
    'IDFM:C01376',
    '6',
    'Edgar Quinet',
    2.3253749636089105,
    48.84098044632817,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463268',
    'IDFM:C01376',
    '6',
    'Trocadéro',
    2.2874927969664416,
    48.86348766501957,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463099',
    'IDFM:C01376',
    '6',
    'Dupleix',
    2.2936368390558783,
    48.85038448621434,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22166',
    'IDFM:C01376',
    '6',
    'Pasteur',
    2.312792651441268,
    48.842482718285865,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22156',
    'IDFM:C01376',
    '6',
    'Montparnasse Bienvenue',
    2.321273396249205,
    48.84205447194666,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463100',
    'IDFM:C01376',
    '6',
    'Edgar Quinet',
    2.3252865779432965,
    48.84090350169825,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463186',
    'IDFM:C01376',
    '6',
    'Glacière',
    2.343438236678704,
    48.831115947616446,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22182',
    'IDFM:C01376',
    '6',
    'Dugommier',
    2.3896007705991944,
    48.838951094045356,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22396',
    'IDFM:C01377',
    '7',
    'Mairie d''Ivry',
    2.383498053635828,
    48.811210093393306,
    '7',
    'Ivry-sur-Seine',
    '94041',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22401',
    'IDFM:C01377',
    '7',
    'Villejuif Paul Vaillant-Couturier',
    2.3683316015776423,
    48.79631793416014,
    '7',
    'Villejuif',
    '94076',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22385',
    'IDFM:C01377',
    '7',
    'Maison Blanche',
    2.3585387043161337,
    48.82216816831483,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463216',
    'IDFM:C01377',
    '7',
    'Les Gobelins',
    2.3525311653622043,
    48.83589170669027,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463265',
    'IDFM:C01377',
    '7',
    'Sully - Morland',
    2.3618531696972482,
    48.851271408393764,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22364',
    'IDFM:C01377',
    '7',
    'Châtelet',
    2.3481609912345776,
    48.856953460785334,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463033',
    'IDFM:C01377',
    '7',
    'Louis Blanc',
    2.3650968074522214,
    48.880895011629946,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463007',
    'IDFM:C01377',
    '7',
    'Porte de la Villette',
    2.3857788171360426,
    48.897865181710756,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463152',
    'IDFM:C01377',
    '7',
    'Corentin Cariou',
    2.382291557164633,
    48.89467266005628,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463008',
    'IDFM:C01377',
    '7',
    'Stalingrad',
    2.3688985490576733,
    48.88437303056126,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22387',
    'IDFM:C01377',
    '7',
    'Gare de l''Est',
    2.3581030566976637,
    48.876361054333444,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463283',
    'IDFM:C01377',
    '7',
    'Pyramides',
    2.33429208315197,
    48.86583012818995,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22376',
    'IDFM:C01377',
    '7',
    'Palais Royal - Musée du Louvre',
    2.337007354765684,
    48.862683997769665,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463060',
    'IDFM:C01377',
    '7',
    'Châtelet',
    2.348102094822081,
    48.85686770157052,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463157',
    'IDFM:C01377',
    '7',
    'Censier - Daubenton',
    2.351495277596339,
    48.84026600820119,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22383',
    'IDFM:C01377',
    '7',
    'Les Gobelins',
    2.3524168018982756,
    48.835841622344475,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463177',
    'IDFM:C01378',
    '8',
    'École Militaire',
    2.3064410394306907,
    48.854861755122315,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22210',
    'IDFM:C01378',
    '8',
    'Charenton - Écoles',
    2.413847237068526,
    48.82125590204953,
    '8',
    'Charenton-le-Pont',
    '94018',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22208',
    'IDFM:C01378',
    '8',
    'Porte de Charenton',
    2.402511872850073,
    48.83344922287947,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463226',
    'IDFM:C01378',
    '8',
    'Michel Bizot',
    2.402366739988004,
    48.83707743103578,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22204',
    'IDFM:C01378',
    '8',
    'Faidherbe - Chaligny',
    2.384072471688875,
    48.850200705509266,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463058',
    'IDFM:C01378',
    '8',
    'Grands Boulevards',
    2.3428924760133967,
    48.871601969451355,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22190',
    'IDFM:C01378',
    '8',
    'Commerce',
    2.293687475167137,
    48.84463784771031,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463135',
    'IDFM:C01378',
    '8',
    'Boucicaut',
    2.2877944613211754,
    48.841122353680156,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21939',
    'IDFM:C01379',
    '9',
    'Billancourt',
    2.237965973200589,
    48.83183051284947,
    '9',
    'Boulogne-Billancourt',
    '92012',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21908',
    'IDFM:C01379',
    '9',
    'Rue de la Pompe',
    2.2778858979590564,
    48.863951708879945,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463144',
    'IDFM:C01379',
    '9',
    'Chaussée d''Antin - La Fayette',
    2.333970457594147,
    48.87280723715393,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21909',
    'IDFM:C01379',
    '9',
    'Grands Boulevards',
    2.343167503558387,
    48.87141461757831,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463133',
    'IDFM:C01379',
    '9',
    'Bonne Nouvelle',
    2.348428667867017,
    48.87049007203075,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21920',
    'IDFM:C01379',
    '9',
    'Strasbourg - Saint-Denis',
    2.3537315826731833,
    48.869349679171926,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21941',
    'IDFM:C01379',
    '9',
    'Mairie de Montreuil',
    2.4418193772459085,
    48.8622744369706,
    '9',
    'Montreuil',
    '93048',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463053',
    'IDFM:C01379',
    '9',
    'Robespierre',
    2.4229449336324724,
    48.855754613895044,
    '9',
    'Montreuil',
    '93048',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:25084',
    'IDFM:C01379',
    '9',
    'Buzenval',
    2.401170769368413,
    48.85176243983227,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462942',
    'IDFM:C01379',
    '9',
    'Nation',
    2.395921369214201,
    48.848979537674516,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463036',
    'IDFM:C01379',
    '9',
    'Richelieu - Drouot',
    2.3386163553228103,
    48.87223943327036,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463318',
    'IDFM:C01379',
    '9',
    'Trocadéro',
    2.2868262498013006,
    48.86308797989344,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463290',
    'IDFM:C01379',
    '9',
    'Ranelagh',
    2.269948157934635,
    48.85550355839564,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21904',
    'IDFM:C01380',
    '10',
    'Michel-Ange - Molitor',
    2.2618218573220084,
    48.84515597018703,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21976',
    'IDFM:C01380',
    '10',
    'Sèvres - Babylone',
    2.326104689925573,
    48.85093150598804,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21973',
    'IDFM:C01380',
    '10',
    'Mabillon',
    2.335142819346476,
    48.85284373829949,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463237',
    'IDFM:C01380',
    '10',
    'Maubert - Mutualité',
    2.3482804131694897,
    48.85019546606951,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21970',
    'IDFM:C01380',
    '10',
    'Duroc',
    2.3162247549746047,
    48.84675637808778,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463076',
    'IDFM:C01380',
    '10',
    'Charles Michels',
    2.2856210133667174,
    48.84660453239739,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21989',
    'IDFM:C01380',
    '10',
    'Boulogne Pont de Saint-Cloud',
    2.2283125898228056,
    48.84067248206251,
    '10',
    'Boulogne-Billancourt',
    '92012',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21997',
    'IDFM:C01381',
    '11',
    'Arts et Métiers',
    2.3565081436435467,
    48.86529961264491,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463187',
    'IDFM:C01381',
    '11',
    'Goncourt',
    2.3710788377398995,
    48.869936723164365,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21991',
    'IDFM:C01381',
    '11',
    'Pyrénées',
    2.384883957748741,
    48.87381265491752,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490788',
    'IDFM:C01381',
    '11',
    'Romainville-Carnot',
    2.4406774445901713,
    48.883574237927014,
    '11',
    'Romainville',
    '93063',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490789',
    'IDFM:C01381',
    '11',
    'Montreuil - Hôpital',
    2.4546692358364623,
    48.878269829247664,
    '11',
    'Montreuil',
    '93048',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490791',
    'IDFM:C01381',
    '11',
    'La Dhuys',
    2.465116181953647,
    48.8780111916913,
    '11',
    'Montreuil',
    '93048',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21995',
    'IDFM:C01381',
    '11',
    'Jourdain',
    2.389325378910096,
    48.875247348641416,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463287',
    'IDFM:C01381',
    '11',
    'Pyrénées',
    2.3852029155695313,
    48.87381879018058,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463110',
    'IDFM:C01381',
    '11',
    'Belleville',
    2.376684607718542,
    48.87198955568015,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21937',
    'IDFM:C01381',
    '11',
    'République',
    2.364804805140413,
    48.86794303120089,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463108',
    'IDFM:C01381',
    '11',
    'Arts et Métiers',
    2.356535223129095,
    48.865380699169286,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463281',
    'IDFM:C01382',
    '12',
    'Porte de la Chapelle',
    2.359103857300198,
    48.89741064164834,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462973',
    'IDFM:C01382',
    '12',
    'Marcadet - Poissonniers',
    2.3500246218070155,
    48.89154760285429,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463089',
    'IDFM:C01382',
    '12',
    'Pigalle',
    2.337211164701128,
    48.88202093206733,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463304',
    'IDFM:C01382',
    '12',
    'Saint-Georges',
    2.3374546190400913,
    48.87836199275949,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21965',
    'IDFM:C01382',
    '12',
    'Madeleine',
    2.325039317039756,
    48.8700546880179,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21980',
    'IDFM:C01382',
    '12',
    'Sèvres - Babylone',
    2.326859663121737,
    48.85156530639137,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463173',
    'IDFM:C01382',
    '12',
    'Falguière',
    2.3175087114640447,
    48.84444335195695,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463321',
    'IDFM:C01382',
    '12',
    'Vaugirard',
    2.300977822126098,
    48.83953628376544,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462949',
    'IDFM:C01382',
    '12',
    'Convention',
    2.2963913864809173,
    48.83713505380496,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463219',
    'IDFM:C01382',
    '12',
    'Mairie d''Issy',
    2.273558168023932,
    48.82434428766646,
    '12',
    'Issy-les-Moulineaux',
    '92040',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462965',
    'IDFM:C01382',
    '12',
    'Notre-Dame des Champs',
    2.3286958054987075,
    48.845077745637816,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22043',
    'IDFM:C01382',
    '12',
    'Rue du Bac',
    2.3256727584985164,
    48.85587553200213,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463123',
    'IDFM:C01382',
    '12',
    'Assemblée Nationale',
    2.3206896796944263,
    48.861122050080816,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463081',
    'IDFM:C01382',
    '12',
    'Madeleine',
    2.325169929034193,
    48.87003294090397,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22046',
    'IDFM:C01382',
    '12',
    'Trinité - d''Estienne d''Orves',
    2.333030634158166,
    48.87625096700832,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22044',
    'IDFM:C01382',
    '12',
    'Saint-Georges',
    2.3375706403796697,
    48.87841659490173,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463065',
    'IDFM:C01382',
    '12',
    'Jules Joffrin',
    2.3443200293804827,
    48.892492268201934,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22052',
    'IDFM:C01382',
    '12',
    'Marcadet - Poissonniers',
    2.3499794329782024,
    48.89145292865467,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22053',
    'IDFM:C01382',
    '12',
    'Marx Dormoy',
    2.359945883178033,
    48.89060729278663,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22243',
    'IDFM:C01383',
    '13',
    'Mairie de Saint-Ouen',
    2.3337865427286206,
    48.91202122382531,
    '13',
    'Saint-Ouen-sur-Seine',
    '93070',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22228',
    'IDFM:C01383',
    '13',
    'Guy Môquet',
    2.327483258626126,
    48.8930014419616,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463207',
    'IDFM:C01383',
    '13',
    'Les Agnettes',
    2.28615583314788,
    48.923055662740055,
    '13',
    'Asnières-sur-Seine',
    '92004',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463011',
    'IDFM:C01383',
    '13',
    'Champs-Élysées - Clemenceau',
    2.3138736155952313,
    48.86749552078754,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22185',
    'IDFM:C01383',
    '13',
    'Invalides',
    2.3146399951225347,
    48.86053445554123,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463303',
    'IDFM:C01383',
    '13',
    'Saint-François-Xavier',
    2.3142859461805556,
    48.85129155093847,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22221',
    'IDFM:C01383',
    '13',
    'Porte de Vanves',
    2.305223578739507,
    48.82766229777493,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463260',
    'IDFM:C01383',
    '13',
    'Porte de Vanves',
    2.3053323866574735,
    48.827613464004294,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22093',
    'IDFM:C01383',
    '13',
    'Champs-Élysées - Clemenceau',
    2.31401668387612,
    48.86750083759083,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22218',
    'IDFM:C01383',
    '13',
    'Saint-Lazare',
    2.325488390672613,
    48.87538131600797,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22234',
    'IDFM:C01383',
    '13',
    'Gabriel Péri',
    2.2946921563609406,
    48.91639290208823,
    '13',
    'Asnières-sur-Seine',
    '92004',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490917',
    'IDFM:C01384',
    '14',
    'Aéroport d''Orly',
    2.3621434233506027,
    48.72791074498099,
    '14',
    'Paray-Vieille-Poste',
    '91479',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490852',
    'IDFM:C01384',
    '14',
    'Thiais - Orly​ (Pont de Rungis​)',
    2.372466241689093,
    48.74684479207573,
    '14',
    'Thiais',
    '94073',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490848',
    'IDFM:C01384',
    '14',
    'Maison Blanche',
    2.358986576752596,
    48.82119024728473,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:480290',
    'IDFM:C01384',
    '14',
    'Mairie de Saint-Ouen',
    2.333435858789529,
    48.91170451534923,
    '14',
    'Saint-Ouen-sur-Seine',
    '93070',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:480541',
    'IDFM:C01384',
    '14',
    'Porte de Clichy',
    2.313431869544054,
    48.89428867785142,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21960',
    'IDFM:C01384',
    '14',
    'Pyramides',
    2.3346236060049232,
    48.865755527376756,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463129',
    'IDFM:C01384',
    '14',
    'Bercy',
    2.3790620152277233,
    48.84010199803391,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490906',
    'IDFM:C01384',
    '14',
    'Villejuif - Gustave Roussy',
    2.349229361846555,
    48.79323843160607,
    '14',
    'Villejuif',
    '94076',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490837',
    'IDFM:C01384',
    '14',
    'L''Haÿ-les-Roses',
    2.354991210566311,
    48.77532646395088,
    '14',
    'L''Haÿ-les-Roses',
    '94038',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21946',
    'IDFM:C01386',
    '3B',
    'Saint-Fargeau',
    2.4044981831688688,
    48.87184337222297,
    '3B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21947',
    'IDFM:C01386',
    '3B',
    'Porte des Lilas',
    2.4070619733807948,
    48.87656859902798,
    '3B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462990',
    'IDFM:C01386',
    '3B',
    'Pelleport',
    2.4014967922879253,
    48.86846488701483,
    '3B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:24687',
    'IDFM:C01387',
    '7B',
    'Danube',
    2.393228471227492,
    48.88194921492064,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463132',
    'IDFM:C01387',
    '7B',
    'Bolivar',
    2.374152140698752,
    48.880789805531926,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47482',
    'IDFM:C01730',
    'P',
    'Nanteuil - Saâcy',
    3.2194260927085296,
    48.97400193831618,
    'P',
    'Saâcy-sur-Marne',
    '77397',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411384',
    'IDFM:C01730',
    'P',
    'Nogent-L''Artaud - Charly',
    3.3228476502480797,
    48.96871609894733,
    'P',
    'Nogent-l''Artaud',
    '02555',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411381',
    'IDFM:C01730',
    'P',
    'Chézy-sur-Marne',
    3.3644154018991057,
    48.99188251331995,
    'P',
    'Chézy-sur-Marne',
    '02186',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58581',
    'IDFM:C01730',
    'P',
    'Villiers Montbarbin',
    2.882573667971905,
    48.86354898645753,
    'P',
    'Crécy-la-Chapelle',
    '77142',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43161',
    'IDFM:C01730',
    'P',
    'Meaux',
    2.8733082321502925,
    48.9566203252873,
    'P',
    'Meaux',
    '77284',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411372',
    'IDFM:C01730',
    'P',
    'La Ferté-Milon',
    3.1206754069517184,
    49.17963214095126,
    'P',
    'La Ferté-Milon',
    '02307',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43208',
    'IDFM:C01730',
    'P',
    'Tournan',
    2.7589013341652717,
    48.739445157221006,
    'P',
    'Tournan-en-Brie',
    '77470',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47199',
    'IDFM:C01730',
    'P',
    'Faremoutiers - Pommeuse',
    2.9932738165708552,
    48.80853544410162,
    'P',
    'Pommeuse',
    '77371',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47181',
    'IDFM:C01730',
    'P',
    'Provins',
    3.302334202203228,
    48.55553092379296,
    'P',
    'Provins',
    '77379',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47914',
    'IDFM:C01730',
    'P',
    'Longueville',
    3.2501140784117886,
    48.513786141275986,
    'P',
    'Longueville',
    '77260',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47184',
    'IDFM:C01730',
    'P',
    'Mormant',
    2.88807855133882,
    48.61409277056721,
    'P',
    'Mormant',
    '77317',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47187',
    'IDFM:C01730',
    'P',
    'Verneuil-l''Étang',
    2.825083962015835,
    48.64438940351837,
    'P',
    'Verneuil-l''Étang',
    '77493',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43245',
    'IDFM:C01731',
    'R',
    'Nemours-Saint-Pierre',
    2.6850524330729284,
    48.26863657605134,
    'R',
    'Saint-Pierre-lès-Nemours',
    '77431',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47118',
    'IDFM:C01731',
    'R',
    'Souppes - Château-Landon',
    2.7358697259911766,
    48.18117871674994,
    'R',
    'Souppes-sur-Loing',
    '77458',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:470195',
    'IDFM:C01731',
    'R',
    'Gare de Lyon',
    2.376365660931201,
    48.84340211646564,
    'R',
    'Paris',
    '75056',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47654',
    'IDFM:C01731',
    'R',
    'Bois-le-Roi',
    2.691542568002651,
    48.47579827327959,
    'R',
    'Bois-le-Roi',
    '77037',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47130',
    'IDFM:C01731',
    'R',
    'Moret - Veneux-les-Sablons',
    2.800462899908886,
    48.37789836789835,
    'R',
    'Moret-Loing-et-Orvanne',
    '77316',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47882',
    'IDFM:C01736',
    'N',
    'Épône - Mézières',
    1.809133387838305,
    48.96340497197892,
    'N',
    'Épône',
    '78217',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43181',
    'IDFM:C01736',
    'N',
    'Plaisir - Les Clayes',
    1.960091444651348,
    48.830838967119995,
    'N',
    'Plaisir',
    '78490',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43108',
    'IDFM:C01736',
    'N',
    'Chaville Rive Gauche',
    2.189425762809199,
    48.8051904761828,
    'N',
    'Chaville',
    '92022',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47932',
    'IDFM:C01736',
    'N',
    'Coignières',
    1.9214184023981655,
    48.74374799338111,
    'N',
    'Coignières',
    '78168',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47591',
    'IDFM:C01737',
    'H',
    'Chaponval',
    2.1410848292610347,
    49.069127824401804,
    'H',
    'Auvers-sur-Oise',
    '95039',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47522',
    'IDFM:C01737',
    'H',
    'Villaines',
    2.3505357370070645,
    49.079264370566555,
    'H',
    'Villaines-sous-Bois',
    '95660',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44411',
    'IDFM:C01737',
    'H',
    'Pontoise',
    2.0957859968423524,
    49.04673337596684,
    'H',
    'Pontoise',
    '95500',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:473159',
    'IDFM:C01737',
    'H',
    'Deuil - Montmagny',
    2.338131209772398,
    48.975925703105524,
    'H',
    'Deuil-la-Barre',
    '95197',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43073',
    'IDFM:C01737',
    'H',
    'Écouen - Ézanville',
    2.3622367893055722,
    49.02319914892831,
    'H',
    'Ézanville',
    '95229',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411329',
    'IDFM:C01737',
    'H',
    'Saint-Leu-d''Esserent',
    2.417071454431694,
    49.21379460642065,
    'H',
    'Saint-Leu-d''Esserent',
    '60584',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47582',
    'IDFM:C01737',
    'H',
    'Méry-sur-Oise',
    2.1914182364676797,
    49.058277435287074,
    'H',
    'Méry-sur-Oise',
    '95394',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46482',
    'IDFM:C01737',
    'H',
    'Gros Noyer Saint-Prix',
    2.2596836105712628,
    48.996079034066284,
    'H',
    'Ermont',
    '95219',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47920',
    'IDFM:C01737',
    'H',
    'Ermont Halte',
    2.26320025038274,
    48.990533377371726,
    'H',
    'Ermont',
    '95219',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46477',
    'IDFM:C01737',
    'H',
    'Champ de Courses d''Enghien',
    2.291148632256432,
    48.9796949197308,
    'H',
    'Soisy-sous-Montmorency',
    '95598',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46470',
    'IDFM:C01737',
    'H',
    'La Barre Ormesson',
    2.3167036448125224,
    48.96628415206348,
    'H',
    'Deuil-la-Barre',
    '95197',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47960',
    'IDFM:C01738',
    'K',
    'Thieux - Nantouillet',
    2.6802537675802913,
    49.00813565335945,
    'K',
    'Thieux',
    '77462',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46975',
    'IDFM:C01739',
    'J',
    'Issou - Porcheville',
    1.7838404356830648,
    48.9793069192499,
    'J',
    'Issou',
    '78314',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46902',
    'IDFM:C01739',
    'J',
    'Thun le Paradis',
    1.919170589720022,
    49.006673442207415,
    'J',
    'Meulan-en-Yvelines',
    '78401',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43160',
    'IDFM:C01739',
    'J',
    'Maurecourt',
    2.059634534011659,
    48.986862412057214,
    'J',
    'Andrésy',
    '78015',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47930',
    'IDFM:C01739',
    'J',
    'Chars',
    1.936865953454158,
    49.16300140123273,
    'J',
    'Chars',
    '95142',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46801',
    'IDFM:C01739',
    'J',
    'Boissy-l''Aillerie',
    2.025386064104548,
    49.07572135804642,
    'J',
    'Boissy-l''Aillerie',
    '95078',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:51494',
    'IDFM:C01739',
    'J',
    'Osny',
    2.0581556508746317,
    49.06281914403825,
    'J',
    'Osny',
    '95476',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44411',
    'IDFM:C01739',
    'J',
    'Pontoise',
    2.0957859968423524,
    49.04673337596684,
    'J',
    'Pontoise',
    '95500',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47603',
    'IDFM:C01739',
    'J',
    'Herblay',
    2.1622316587721904,
    48.990136140429954,
    'J',
    'Herblay-sur-Seine',
    '95306',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43116',
    'IDFM:C01739',
    'J',
    'Cormeilles-en-Parisis',
    2.1930511780913897,
    48.9686435877584,
    'J',
    'Cormeilles-en-Parisis',
    '95176',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47882',
    'IDFM:C01739',
    'J',
    'Épône - Mézières',
    1.809133387838305,
    48.96340497197892,
    'J',
    'Épône',
    '78217',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43157',
    'IDFM:C01739',
    'J',
    'Mantes-la-Jolie',
    1.703836824856348,
    48.989295021419494,
    'J',
    'Mantes-la-Jolie',
    '78361',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:479059',
    'IDFM:C01739',
    'J',
    'Rosny-sur-Seine',
    1.6298170882272784,
    48.99751746396684,
    'J',
    'Rosny-sur-Seine',
    '78531',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46984',
    'IDFM:C01739',
    'J',
    'Bonnières',
    1.5820546885594051,
    49.03882194566387,
    'J',
    'Bonnières-sur-Seine',
    '78089',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44559',
    'IDFM:C01740',
    'L',
    'Cergy Préfecture',
    2.0797809490013073,
    49.036306683133965,
    'L',
    'Cergy',
    '95127',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43114',
    'IDFM:C01740',
    'L',
    'Conflans Fin d''Oise',
    2.0746499245710193,
    48.991156287258484,
    'L',
    'Conflans-Sainte-Honorine',
    '78172',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43184',
    'IDFM:C01740',
    'L',
    'Puteaux',
    2.2336164976472146,
    48.8833721630466,
    'L',
    'Puteaux',
    '92062',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43205',
    'IDFM:C01740',
    'L',
    'Suresnes Mont Valérien',
    2.2210567895582143,
    48.871689522026664,
    'L',
    'Suresnes',
    '92073',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43196',
    'IDFM:C01740',
    'L',
    'Saint-Cloud',
    2.2176312182469986,
    48.846058536430505,
    'L',
    'Saint-Cloud',
    '92064',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43167',
    'IDFM:C01740',
    'L',
    'Montreuil',
    2.1528278413582385,
    48.805965217521,
    'L',
    'Versailles',
    '78646',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47923',
    'IDFM:C01740',
    'L',
    'Bécon les Bruyères',
    2.268790065027107,
    48.90549079769296,
    'L',
    'Courbevoie',
    '92026',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47969',
    'IDFM:C01740',
    'L',
    'Les Vallées',
    2.2572045759752384,
    48.91365276270651,
    'L',
    'Colombes',
    '92025',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:473109',
    'IDFM:C01740',
    'L',
    'Maisons-Laffitte',
    2.1446722659338855,
    48.94574060746957,
    'L',
    'Maisons-Laffitte',
    '78358',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47767',
    'IDFM:C01741',
    'U',
    'Sèvres - Ville-d''Avray',
    2.2007294495659546,
    48.827253206930806,
    'U',
    'Sèvres',
    '92072',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43083',
    'IDFM:C02711',
    'V',
    'Igny',
    2.230807643224045,
    48.74084886110891,
    'V',
    'Igny',
    '91312',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47115',
    'IDFM:C01727',
    'C',
    'Saint-Martin d''Étampes',
    2.145258831307165,
    48.42748765080825,
    'C',
    'Étampes',
    '91223',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43159',
    'IDFM:C01727',
    'C',
    'Marolles-en-Hurepoix',
    2.290908349251896,
    48.56564453550255,
    'C',
    'Marolles-en-Hurepoix',
    '91376',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43188',
    'IDFM:C01727',
    'C',
    'Sainte-Geneviève-des-Bois',
    2.3129608959702024,
    48.65295347339147,
    'C',
    'Sainte-Geneviève-des-Bois',
    '91549',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43192',
    'IDFM:C01727',
    'C',
    'Savigny-sur-Orge',
    2.3523541804056833,
    48.67639468866699,
    'C',
    'Savigny-sur-Orge',
    '91589',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45453',
    'IDFM:C01727',
    'C',
    'Boulainvilliers',
    2.274806827480264,
    48.856981095562965,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:415093',
    'IDFM:C01727',
    'C',
    'Neuilly Porte Maillot',
    2.284217509613705,
    48.878347804048644,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44514',
    'IDFM:C01727',
    'C',
    'Porte de Clichy',
    2.3159411535514716,
    48.894262568309564,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43126',
    'IDFM:C01727',
    'C',
    'Franconville - Le Plessis-Bouchard',
    2.2341907839306554,
    48.99374640051787,
    'C',
    'Franconville',
    '95252',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43150',
    'IDFM:C01727',
    'C',
    'Saint-Ouen-l''Aumône Liesse',
    2.128124092657316,
    49.0341234164973,
    'C',
    'Saint-Ouen-l''Aumône',
    '95572',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43220',
    'IDFM:C01727',
    'C',
    'Versailles Château Rive Gauche',
    2.130150772175517,
    48.79991350059487,
    'C',
    'Versailles',
    '78646',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43183',
    'IDFM:C01727',
    'C',
    'Porchefontaine',
    2.1522340489858127,
    48.79654475986442,
    'C',
    'Versailles',
    '78646',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:462388',
    'IDFM:C01727',
    'C',
    'Viroflay Rive Gauche',
    2.17158260741522,
    48.800665521455045,
    'C',
    'Viroflay',
    '78686',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58774',
    'IDFM:C01727',
    'C',
    'Massy - Palaiseau',
    2.2587677282577334,
    48.72551907437078,
    'C',
    'Massy',
    '91377',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43110',
    'IDFM:C01727',
    'C',
    'Choisy-le-Roi',
    2.411287538155699,
    48.76387977763339,
    'C',
    'Choisy-le-Roi',
    '94022',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46366',
    'IDFM:C01727',
    'C',
    'Ivry-sur-Seine',
    2.391677280020743,
    48.8139591342409,
    'C',
    'Ivry-sur-Seine',
    '94041',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45301',
    'IDFM:C01727',
    'C',
    'Bibliothèque François Mitterrand',
    2.377758552865005,
    48.8288801225864,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:470540',
    'IDFM:C01727',
    'C',
    'Invalides',
    2.3126576509104404,
    48.8627130056211,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58757',
    'IDFM:C01727',
    'C',
    'Champ de Mars Tour Eiffel',
    2.2896562493865478,
    48.8564765666592,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58798',
    'IDFM:C01727',
    'C',
    'Pont du Garigliano - Hôpital Européen G. Pompidou',
    2.2704701876900395,
    48.83888336270874,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47906',
    'IDFM:C01728',
    'D',
    'Évry - Courcouronnes',
    2.4300329095214526,
    48.62588794663492,
    'D',
    'Évry-Courcouronnes',
    '91228',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45850',
    'IDFM:C01728',
    'D',
    'Le Bras de Fer',
    2.4520047548737254,
    48.623306397197155,
    'D',
    'Évry-Courcouronnes',
    '91228',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44628',
    'IDFM:C01728',
    'D',
    'Louvres',
    2.5018113143714777,
    49.04933726826723,
    'D',
    'Louvres',
    '95351',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47665',
    'IDFM:C01728',
    'D',
    'Savigny-le-Temple - Nandy',
    2.5839359760934313,
    48.59548998563483,
    'D',
    'Savigny-le-Temple',
    '77445',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47684',
    'IDFM:C01728',
    'D',
    'Montgeron - Crosne',
    2.461377446437224,
    48.70871108366713,
    'D',
    'Montgeron',
    '91421',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46286',
    'IDFM:C01728',
    'D',
    'Créteil Pompadour',
    2.435315840251248,
    48.771254072297346,
    'D',
    'Créteil',
    '94028',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45102',
    'IDFM:C01728',
    'D',
    'Châtelet les Halles',
    2.34697651043533,
    48.86174503191322,
    'D',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43204',
    'IDFM:C01728',
    'D',
    'Stade de France Saint-Denis',
    2.3504430479100207,
    48.91769737260247,
    'D',
    'Saint-Denis',
    '93066',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43142',
    'IDFM:C01728',
    'D',
    'La Ferté-Alais',
    2.352260197381972,
    48.4855007310595,
    'D',
    'Baulne',
    '91047',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47899',
    'IDFM:C01728',
    'D',
    'Mennecy',
    2.4319348900260658,
    48.57054850948166,
    'D',
    'Mennecy',
    '91386',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47948',
    'IDFM:C01728',
    'D',
    'Ris-Orangis',
    2.414997460834355,
    48.659057463386254,
    'D',
    'Ris-Orangis',
    '91521',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45067',
    'IDFM:C01728',
    'D',
    'Villeneuve-Saint-Georges',
    2.446304786739812,
    48.730080267741016,
    'D',
    'Villeneuve-Saint-Georges',
    '94078',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43154',
    'IDFM:C01728',
    'D',
    'Maisons-Alfort - Alfortville',
    2.4264376603578035,
    48.80217813521484,
    'D',
    'Alfortville',
    '94002',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:470195',
    'IDFM:C01728',
    'D',
    'Gare de Lyon',
    2.376365660931201,
    48.84340211646564,
    'D',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58572',
    'IDFM:C01729',
    'E',
    'Magenta',
    2.358695908637114,
    48.88081039411524,
    'E',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58267',
    'IDFM:C01729',
    'E',
    'Les Boullereaux Champigny',
    2.511990843607618,
    48.82486398816196,
    'E',
    'Champigny-sur-Marne',
    '94017',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:470519',
    'IDFM:C01729',
    'E',
    'Gare de l''Est',
    2.360305141171757,
    48.87857171221123,
    'E',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43213',
    'IDFM:C01742',
    'A',
    'Val d''Europe',
    2.7724268942340276,
    48.85484622851565,
    'A',
    'Chessy',
    '77111',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58874',
    'IDFM:C01742',
    'A',
    'Bussy-Saint-Georges',
    2.7103828395096956,
    48.83671337078136,
    'A',
    'Bussy-Saint-Georges',
    '77058',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43191',
    'IDFM:C01742',
    'A',
    'Sartrouville',
    2.1572200388507317,
    48.93769529363442,
    'A',
    'Sartrouville',
    '78586',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:473109',
    'IDFM:C01742',
    'A',
    'Maisons-Laffitte',
    2.1446722659338855,
    48.94574060746957,
    'A',
    'Maisons-Laffitte',
    '78358',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:53784',
    'IDFM:C01742',
    'A',
    'Le Vésinet - Centre',
    2.1343339900216813,
    48.89013759185911,
    'A',
    'Le Vésinet',
    '78650',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43175',
    'IDFM:C01743',
    'B',
    'Palaiseau - Villebon',
    2.237329249708309,
    48.7081489333421,
    'B',
    'Palaiseau',
    '91477',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:474069',
    'IDFM:C01743',
    'B',
    'Lozère',
    2.212717641845953,
    48.705912413627026,
    'B',
    'Palaiseau',
    '91477',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:462398',
    'IDFM:C01743',
    'B',
    'Aéroport CDG 1 (Terminal 3) - RER',
    2.5614121946317394,
    49.00979397116337,
    'B',
    'Tremblay-en-France',
    '93073',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46222',
    'IDFM:C01743',
    'B',
    'Vert Galant',
    2.5663968806983126,
    48.944091645418105,
    'B',
    'Villepinte',
    '93078',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43194',
    'IDFM:C01743',
    'B',
    'Sevran - Livry',
    2.5352889927291447,
    48.93640164880271,
    'B',
    'Sevran',
    '93071',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44877',
    'IDFM:C01743',
    'B',
    'Saint-Michel Notre-Dame',
    2.344959780029387,
    48.853023793740164,
    'B',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43833',
    'IDFM:C01743',
    'B',
    'Luxembourg',
    2.3398088878203698,
    48.84543177842458,
    'B',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44500',
    'IDFM:C01743',
    'B',
    'Port Royal',
    2.3371383995944486,
    48.840064350218256,
    'B',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:59206',
    'IDFM:C01743',
    'B',
    'Sceaux',
    2.2979282159439305,
    48.781307920937515,
    'B',
    'Sceaux',
    '92071',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43125',
    'IDFM:C01743',
    'B',
    'Fontenay-aux-Roses',
    2.2929083820455323,
    48.78756698215643,
    'B',
    'Fontenay-aux-Roses',
    '92032',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47095',
    'IDFM:C01727',
    'C',
    'Dourdan la Forêt',
    1.996005688002604,
    48.53542058733677,
    'C',
    'Dourdan',
    '91200',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43219',
    'IDFM:C01727',
    'C',
    'Versailles Chantiers',
    2.1349078603373464,
    48.79526039893613,
    'C',
    'Versailles',
    '78646',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46990',
    'IDFM:C01727',
    'C',
    'Saint-Cyr',
    2.072712440765476,
    48.79877460471833,
    'C',
    'Saint-Cyr-l''École',
    '78545',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:461504',
    'IDFM:C01727',
    'C',
    'Saint-Quentin en Yvelines - Montigny-le-Bretonneux',
    2.044615988930814,
    48.78748491597792,
    'C',
    'Montigny-le-Bretonneux',
    '78423',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43099',
    'IDFM:C01727',
    'C',
    'Breuillet Village',
    2.170354257290333,
    48.56433413404574,
    'C',
    'Breuillet',
    '91105',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43068',
    'IDFM:C01727',
    'C',
    'Arpajon',
    2.2412169696111426,
    48.58599680822646,
    'C',
    'Arpajon',
    '91021',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43080',
    'IDFM:C01727',
    'C',
    'Étampes',
    2.159819133907717,
    48.437062675829104,
    'C',
    'Étampes',
    '91223',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45447',
    'IDFM:C01727',
    'C',
    'Avenue Henri Martin',
    2.2722351438875577,
    48.86545537297977,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43203',
    'IDFM:C01727',
    'C',
    'Saint-Ouen',
    2.322694729473372,
    48.90456082213364,
    'C',
    'Saint-Ouen-sur-Seine',
    '93070',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44411',
    'IDFM:C01727',
    'C',
    'Pontoise',
    2.0957859968423524,
    49.04673337596684,
    'C',
    'Pontoise',
    '95500',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45739',
    'IDFM:C01727',
    'C',
    'Juvisy',
    2.383334629403869,
    48.68970940912314,
    'C',
    'Juvisy-sur-Orge',
    '91326',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46375',
    'IDFM:C01727',
    'C',
    'Vitry-sur-Seine',
    2.40269438767449,
    48.80028105254759,
    'C',
    'Vitry-sur-Seine',
    '94081',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45346',
    'IDFM:C01727',
    'C',
    'Javel',
    2.27803679359566,
    48.84716158046345,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43084',
    'IDFM:C01727',
    'C',
    'Issy',
    2.257883547622023,
    48.81933737870203,
    'C',
    'Issy-les-Moulineaux',
    '92040',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411421',
    'IDFM:C01728',
    'D',
    'Orry-la-Ville - Coye',
    2.489862086302069,
    49.13840546145438,
    'D',
    'Orry-la-Ville',
    '60482',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58873',
    'IDFM:C01728',
    'D',
    'Brunoy',
    2.5068503123113692,
    48.698914475306886,
    'D',
    'Brunoy',
    '91114',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43251',
    'IDFM:C01728',
    'D',
    'Garges - Sarcelles',
    2.3899547555239407,
    48.97632635843972,
    'D',
    'Garges-lès-Gonesse',
    '95268',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45763',
    'IDFM:C01728',
    'D',
    'Boissise-le-Roi',
    2.57179291425262,
    48.52985734002498,
    'D',
    'Boissise-le-Roi',
    '77040',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43102',
    'IDFM:C01728',
    'D',
    'Buno - Gironville',
    2.3872541083159335,
    48.37149489082515,
    'D',
    'Buno-Bonnevaux',
    '91121',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:470549',
    'IDFM:C01729',
    'E',
    'La Défense',
    2.238418596250407,
    48.892229801568206,
    'E',
    'Puteaux',
    '92062',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43131',
    'IDFM:C01729',
    'E',
    'Gretz-Armainvilliers',
    2.727167738339898,
    48.74645539980236,
    'E',
    'Gretz-Armainvilliers',
    '77215',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58288',
    'IDFM:C01729',
    'E',
    'Les Yvris Noisy-le-Grand',
    2.5799804563719477,
    48.82311348135466,
    'E',
    'Noisy-le-Grand',
    '93051',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43044',
    'IDFM:C01729',
    'E',
    'Gagny',
    2.5254046016945138,
    48.883728731604535,
    'E',
    'Gagny',
    '93032',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:42356',
    'IDFM:C01729',
    'E',
    'Rosny Bois Perrier',
    2.4811863962676766,
    48.88258632328664,
    'E',
    'Rosny-sous-Bois',
    '93064',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44201',
    'IDFM:C01729',
    'E',
    'Noisy-le-Sec',
    2.4591980956866797,
    48.8966634168645,
    'E',
    'Noisy-le-Sec',
    '93053',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43176',
    'IDFM:C01729',
    'E',
    'Pantin',
    2.4010414542870944,
    48.897987452300434,
    'E',
    'Pantin',
    '93055',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44199',
    'IDFM:C01742',
    'A',
    'Noisiel',
    2.616660606000051,
    48.84351408493866,
    'A',
    'Noisiel',
    '77337',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58937',
    'IDFM:C01742',
    'A',
    'Noisy - Champs',
    2.580103342831972,
    48.84289619599068,
    'A',
    'Noisy-le-Grand',
    '93051',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43172',
    'IDFM:C01742',
    'A',
    'Neuilly-Plaisance',
    2.5145898211367705,
    48.85252451313788,
    'A',
    'Neuilly-Plaisance',
    '93049',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47900',
    'IDFM:C01742',
    'A',
    'Val de Fontenay',
    2.4890536307751616,
    48.85424654032024,
    'A',
    'Fontenay-sous-Bois',
    '94033',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43082',
    'IDFM:C01742',
    'A',
    'Houilles - Carrières-sur-Seine',
    2.1851757042018707,
    48.92034757911033,
    'A',
    'Houilles',
    '78311',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46647',
    'IDFM:C01742',
    'A',
    'Achères Ville',
    2.0777265246565433,
    48.970643570814424,
    'A',
    'Achères',
    '78005',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47879',
    'IDFM:C01742',
    'A',
    'Neuville Université',
    2.078348820578231,
    49.01374275942672,
    'A',
    'Neuville-sur-Oise',
    '95450',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47897',
    'IDFM:C01742',
    'A',
    'Cergy Saint-Christophe',
    2.0345219282999176,
    49.049642166828754,
    'A',
    'Cergy',
    '95127',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47886',
    'IDFM:C01742',
    'A',
    'Nogent-sur-Marne',
    2.471683791180998,
    48.834306538503405,
    'A',
    'Nogent-sur-Marne',
    '94052',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47238',
    'IDFM:C01742',
    'A',
    'Fontenay-sous-Bois',
    2.463537806527943,
    48.8437885964859,
    'A',
    'Fontenay-sous-Bois',
    '94033',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43224',
    'IDFM:C01742',
    'A',
    'Vincennes',
    2.4325836014183,
    48.84734683460296,
    'A',
    'Vincennes',
    '94080',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:470195',
    'IDFM:C01742',
    'A',
    'Gare de Lyon',
    2.376365660931201,
    48.84340211646564,
    'A',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43171',
    'IDFM:C01742',
    'A',
    'Nanterre Ville',
    2.19511769490499,
    48.89501972616058,
    'A',
    'Nanterre',
    '92050',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43124',
    'IDFM:C01743',
    'B',
    'Fontaine Michalon',
    2.2959559818374013,
    48.74304953436299,
    'B',
    'Antony',
    '92002',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43228',
    'IDFM:C01743',
    'B',
    'Les Baconnets',
    2.288108127151424,
    48.73984612871272,
    'B',
    'Antony',
    '92002',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47940',
    'IDFM:C01743',
    'B',
    'Massy - Verrières',
    2.273978779055319,
    48.7349579552114,
    'B',
    'Massy',
    '91377',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43086',
    'IDFM:C01743',
    'B',
    'Orsay Ville',
    2.1808087044597166,
    48.6975077019159,
    'B',
    'Orsay',
    '91471',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:473364',
    'IDFM:C01743',
    'B',
    'Aéroport Charles de Gaulle 2 (Terminal 2)',
    2.5709800477570233,
    49.0041455478504,
    'B',
    'Tremblay-en-France',
    '93073',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47878',
    'IDFM:C01743',
    'B',
    'Parc des Expositions',
    2.5145512908225953,
    48.97356812654279,
    'B',
    'Villepinte',
    '93078',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43164',
    'IDFM:C01743',
    'B',
    'Mitry - Claye',
    2.6422341369736606,
    48.9757479508066,
    'B',
    'Mitry-Mory',
    '77294',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43071',
    'IDFM:C01743',
    'B',
    'Aulnay-sous-Bois',
    2.495597257086315,
    48.932150935734064,
    'B',
    'Aulnay-sous-Bois',
    '93005',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43122',
    'IDFM:C01743',
    'B',
    'Drancy',
    2.454883180745302,
    48.932732553959134,
    'B',
    'Drancy',
    '93029',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43231',
    'IDFM:C01743',
    'B',
    'Le Bourget',
    2.425825637815098,
    48.930744340383264,
    'B',
    'Le Bourget',
    '93013',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43145',
    'IDFM:C01743',
    'B',
    'La Plaine Stade de France',
    2.362459916604931,
    48.918076675621,
    'B',
    'Saint-Denis',
    '93066',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45102',
    'IDFM:C01743',
    'B',
    'Châtelet les Halles',
    2.34697651043533,
    48.86174503191322,
    'B',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43186',
    'IDFM:C01743',
    'B',
    'Robinson',
    2.281364769669608,
    48.78023982792202,
    'B',
    'Sceaux',
    '92071',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47950',
    'IDFM:C01727',
    'C',
    'Sermaise',
    2.069088468619773,
    48.535687624993614,
    'C',
    'Sermaise',
    '91593',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47952',
    'IDFM:C01727',
    'C',
    'Saint-Chéron',
    2.1249767315730463,
    48.550937745357075,
    'C',
    'Saint-Chéron',
    '91540',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43149',
    'IDFM:C01727',
    'C',
    'Lardy',
    2.255014220399748,
    48.520620553497956,
    'C',
    'Lardy',
    '91330',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47905',
    'IDFM:C01727',
    'C',
    'Bouray',
    2.2900778137432436,
    48.53290340283496,
    'C',
    'Lardy',
    '91330',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43098',
    'IDFM:C01727',
    'C',
    'Brétigny',
    2.3019573828860596,
    48.60664906621052,
    'C',
    'Brétigny-sur-Orge',
    '91103',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45437',
    'IDFM:C01727',
    'C',
    'Avenue Foch',
    2.2747712644338454,
    48.86985281215763,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43201',
    'IDFM:C01727',
    'C',
    'Saint-Gratien',
    2.285777828585351,
    48.963658273529425,
    'C',
    'Saint-Gratien',
    '95555',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46387',
    'IDFM:C01727',
    'C',
    'Ablon',
    2.4198671478914595,
    48.72578126379895,
    'C',
    'Ablon-sur-Seine',
    '94001',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46395',
    'IDFM:C01727',
    'C',
    'Athis-Mons',
    2.403668724287269,
    48.71266832171659,
    'C',
    'Athis-Mons',
    '91027',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46035',
    'IDFM:C01727',
    'C',
    'Chemin d''Antony',
    2.3126496863919335,
    48.747936542587276,
    'C',
    'Antony',
    '92002',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44787',
    'IDFM:C01727',
    'C',
    'Rungis la Fraternelle',
    2.3521980873905326,
    48.74021613668418,
    'C',
    'Rungis',
    '94065',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46298',
    'IDFM:C01727',
    'C',
    'Les Saules',
    2.4174549898851208,
    48.74520105223681,
    'C',
    'Orly',
    '94054',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43072',
    'IDFM:C01727',
    'C',
    'Gare d''Austerlitz',
    2.367818767583529,
    48.84032035638395,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45705',
    'IDFM:C01727',
    'C',
    'Musée d''Orsay',
    2.326623034830927,
    48.860365575927474,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:415091',
    'IDFM:C01727',
    'C',
    'Pont de l''Alma',
    2.3003592740110994,
    48.86247496310803,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43163',
    'IDFM:C01727',
    'C',
    'Meudon Val Fleury',
    2.2409419171683633,
    48.807552358196936,
    'C',
    'Meudon',
    '92048',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43132',
    'IDFM:C01728',
    'D',
    'Grigny Centre',
    2.39678605544789,
    48.65484195083382,
    'D',
    'Grigny',
    '91286',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411428',
    'IDFM:C01728',
    'D',
    'Chantilly - Gouvieux',
    2.4595159140085237,
    49.187030004663995,
    'D',
    'Chantilly',
    '60141',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45784',
    'IDFM:C01728',
    'D',
    'Le Mée',
    2.6255537322060074,
    48.538746730738936,
    'D',
    'Le Mée-sur-Seine',
    '77285',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47669',
    'IDFM:C01728',
    'D',
    'Lieusaint - Moissy',
    2.569507070898012,
    48.62833648393033,
    'D',
    'Lieusaint',
    '77251',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45771',
    'IDFM:C01728',
    'D',
    'Combs-la-Ville - Quincy',
    2.5476998823085504,
    48.667819721800015,
    'D',
    'Combs-la-Ville',
    '77122',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:412743',
    'IDFM:C01728',
    'D',
    'Saint-Denis',
    2.345479004987329,
    48.93482889939617,
    'D',
    'Saint-Denis',
    '93066',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43179',
    'IDFM:C01728',
    'D',
    'Pierrefitte - Stains',
    2.3703314284767747,
    48.96277628555098,
    'D',
    'Pierrefitte-sur-Seine',
    '93059',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43222',
    'IDFM:C01728',
    'D',
    'Villiers-le-Bel - Gonesse - Arnouville',
    2.4162467958973055,
    48.99377204005172,
    'D',
    'Arnouville',
    '95019',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45812',
    'IDFM:C01728',
    'D',
    'Ponthierry - Pringy',
    2.5445365646399507,
    48.535084951085466,
    'D',
    'Saint-Fargeau-Ponthierry',
    '77407',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47967',
    'IDFM:C01728',
    'D',
    'Vosves',
    2.5994097381795305,
    48.51507609100275,
    'D',
    'Dammarie-les-Lys',
    '77152',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43156',
    'IDFM:C01728',
    'D',
    'Maisse',
    2.393493661032251,
    48.39367132989446,
    'D',
    'Maisse',
    '91359',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43087',
    'IDFM:C01728',
    'D',
    'Ballancourt',
    2.3700930488013845,
    48.53101531216478,
    'D',
    'Ballancourt-sur-Essonne',
    '91045',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43115',
    'IDFM:C01728',
    'D',
    'Corbeil-Essonnes',
    2.472467657639279,
    48.61323864277619,
    'D',
    'Corbeil-Essonnes',
    '91174',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45739',
    'IDFM:C01728',
    'D',
    'Juvisy',
    2.383334629403869,
    48.68970940912314,
    'D',
    'Juvisy-sur-Orge',
    '91326',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45735',
    'IDFM:C01728',
    'D',
    'Vigneux-sur-Seine',
    2.413499342148242,
    48.70808932141768,
    'D',
    'Vigneux-sur-Seine',
    '91657',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:487011',
    'IDFM:C01729',
    'E',
    'Nanterre-La-Folie',
    2.226568794458685,
    48.897581324774116,
    'E',
    'Nanterre',
    '92050',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43208',
    'IDFM:C01729',
    'E',
    'Tournan',
    2.7589013341652717,
    48.739445157221006,
    'E',
    'Tournan-en-Brie',
    '77470',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46568',
    'IDFM:C01729',
    'E',
    'Roissy-en-Brie',
    2.650530702348584,
    48.79563367624288,
    'E',
    'Roissy-en-Brie',
    '77390',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43127',
    'IDFM:C01729',
    'E',
    'Le Chénay Gagny',
    2.5527724908646303,
    48.877159125382796,
    'E',
    'Gagny',
    '93032',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46552',
    'IDFM:C01729',
    'E',
    'Nogent - Le Perreux',
    2.4939549579206104,
    48.839991175687295,
    'E',
    'Nogent-sur-Marne',
    '94052',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43239',
    'IDFM:C01742',
    'A',
    'Marne-la-Vallée Chessy',
    2.7824826512673546,
    48.86979506673141,
    'A',
    'Chessy',
    '77111',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43104',
    'IDFM:C01742',
    'A',
    'Cergy le Haut',
    2.011579068023536,
    49.04823262405815,
    'A',
    'Cergy',
    '95127',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43094',
    'IDFM:C01742',
    'A',
    'Boissy-Saint-Léger',
    2.504498176690716,
    48.752267307821874,
    'A',
    'Boissy-Saint-Léger',
    '94004',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43146',
    'IDFM:C01742',
    'A',
    'La Varenne - Chennevières',
    2.5132322873015256,
    48.79532749459459,
    'A',
    'Saint-Maur-des-Fossés',
    '94068',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44801',
    'IDFM:C01742',
    'A',
    'Saint-Maur - Créteil',
    2.4729094308778183,
    48.80619648110731,
    'A',
    'Saint-Maur-des-Fossés',
    '94068',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43169',
    'IDFM:C01742',
    'A',
    'Nanterre Préfecture',
    2.2229862429913676,
    48.895886773064674,
    'A',
    'Nanterre',
    '92050',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58875',
    'IDFM:C01742',
    'A',
    'Rueil-Malmaison',
    2.172366417897185,
    48.88767250064626,
    'A',
    'Rueil-Malmaison',
    '92063',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43237',
    'IDFM:C01742',
    'A',
    'Le Vésinet - Le Pecq',
    2.122132232303764,
    48.89794951079969,
    'A',
    'Le Vésinet',
    '78650',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43177',
    'IDFM:C01743',
    'B',
    'Parc de Sceaux',
    2.309934691589042,
    48.769718949712896,
    'B',
    'Antony',
    '92002',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46007',
    'IDFM:C01743',
    'B',
    'La Croix de Berny',
    2.3042107053612133,
    48.76171816323692,
    'B',
    'Antony',
    '92002',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43066',
    'IDFM:C01743',
    'B',
    'Antony',
    2.300890371505836,
    48.754632057173126,
    'B',
    'Antony',
    '92002',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58774',
    'IDFM:C01743',
    'B',
    'Massy - Palaiseau',
    2.2587677282577334,
    48.72551907437078,
    'B',
    'Massy',
    '91377',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47009',
    'IDFM:C01743',
    'B',
    'Palaiseau',
    2.24558429554376,
    48.71686524330362,
    'B',
    'Palaiseau',
    '91477',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47888',
    'IDFM:C01743',
    'B',
    'Gif-sur-Yvette',
    2.13649439862523,
    48.698175579920274,
    'B',
    'Gif-sur-Yvette',
    '91272',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47052',
    'IDFM:C01743',
    'B',
    'Courcelle-sur-Yvette',
    2.097722386795541,
    48.70131367727702,
    'B',
    'Gif-sur-Yvette',
    '91272',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:473890',
    'IDFM:C01743',
    'B',
    'Denfert-Rochereau',
    2.333220634641387,
    48.83318643678081,
    'B',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43067',
    'IDFM:C01743',
    'B',
    'Arcueil - Cachan',
    2.328093276131277,
    48.79869767228883,
    'B',
    'Cachan',
    '94016',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47925',
    'IDFM:C01727',
    'C',
    'Breuillet - Bruyères-le-Châtel',
    2.1922487394356454,
    48.57760979436327,
    'C',
    'Breuillet',
    '91105',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:415484',
    'IDFM:C01727',
    'C',
    'Égly',
    2.2234625238542307,
    48.582715781664064,
    'C',
    'Égly',
    '91207',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47939',
    'IDFM:C01727',
    'C',
    'La Norville - Saint-Germain-lès-Arpajon',
    2.266215906699314,
    48.59111916474817,
    'C',
    'La Norville',
    '91457',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43081',
    'IDFM:C01727',
    'C',
    'Étréchy',
    2.1947692381982216,
    48.49387742150091,
    'C',
    'Étréchy',
    '91226',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44314',
    'IDFM:C01727',
    'C',
    'Péreire Levallois',
    2.2992286819828145,
    48.88602700780433,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43230',
    'IDFM:C01727',
    'C',
    'Les Grésillons',
    2.313901968217972,
    48.9206901983449,
    'C',
    'Gennevilliers',
    '92036',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43130',
    'IDFM:C01727',
    'C',
    'Gennevilliers',
    2.307982254553742,
    48.93282405536431,
    'C',
    'Gennevilliers',
    '92036',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43077',
    'IDFM:C01727',
    'C',
    'Épinay-sur-Seine',
    2.302388375122374,
    48.95382604164122,
    'C',
    'Épinay-sur-Seine',
    '93031',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43105',
    'IDFM:C01727',
    'C',
    'Cernay',
    2.257017857907824,
    48.985149200200375,
    'C',
    'Ermont',
    '95219',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43166',
    'IDFM:C01727',
    'C',
    'Montigny - Beauchamp',
    2.1965151756043033,
    49.007744118117,
    'C',
    'Pierrelaye',
    '95488',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43180',
    'IDFM:C01727',
    'C',
    'Pierrelaye',
    2.1545313948758564,
    49.01917957374756,
    'C',
    'Pierrelaye',
    '95488',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46307',
    'IDFM:C01727',
    'C',
    'Villeneuve-le-Roi',
    2.426423645047488,
    48.73968685807613,
    'C',
    'Villeneuve-le-Roi',
    '94077',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47940',
    'IDFM:C01727',
    'C',
    'Massy - Verrières',
    2.273978779055319,
    48.7349579552114,
    'C',
    'Massy',
    '91377',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43227',
    'IDFM:C01727',
    'C',
    'Les Ardoines',
    2.409587305033223,
    48.78248922625494,
    'C',
    'Vitry-sur-Seine',
    '94081',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44877',
    'IDFM:C01727',
    'C',
    'Saint-Michel Notre-Dame',
    2.344959780029387,
    48.853023793740164,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:48489',
    'IDFM:C01728',
    'D',
    'Orangis Bois de l''Épine',
    2.40769076622141,
    48.6363396147683,
    'D',
    'Ris-Orangis',
    '91521',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411440',
    'IDFM:C01728',
    'D',
    'Creil',
    2.46892902764167,
    49.264185555044406,
    'D',
    'Creil',
    '60175',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411418',
    'IDFM:C01728',
    'D',
    'La Borne Blanche',
    2.5069908684194053,
    49.1261949449139,
    'D',
    'Orry-la-Ville',
    '60482',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47968',
    'IDFM:C01728',
    'D',
    'Les Noues',
    2.477713962139221,
    49.03307204384692,
    'D',
    'Goussainville',
    '95280',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:42516',
    'IDFM:C01728',
    'D',
    'Cesson',
    2.5946150549367304,
    48.56486314053174,
    'D',
    'Cesson',
    '77067',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43226',
    'IDFM:C01728',
    'D',
    'Yerres',
    2.483187005163047,
    48.7064507273249,
    'D',
    'Yerres',
    '91691',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45759',
    'IDFM:C01728',
    'D',
    'Essonnes Robinson',
    2.463295818844443,
    48.60581740091332,
    'D',
    'Corbeil-Essonnes',
    '91174',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45820',
    'IDFM:C01728',
    'D',
    'Le Plessis Chenet',
    2.4795222910084975,
    48.57358727886637,
    'D',
    'Le Coudray-Montceaux',
    '91179',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45761',
    'IDFM:C01728',
    'D',
    'Moulin Galant',
    2.473444919964576,
    48.58688228073328,
    'D',
    'Corbeil-Essonnes',
    '91174',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45745',
    'IDFM:C01728',
    'D',
    'Évry - Val de Seine',
    2.4523091616356028,
    48.63439299320402,
    'D',
    'Évry-Courcouronnes',
    '91228',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45860',
    'IDFM:C01728',
    'D',
    'Grand Bourg',
    2.4348387319350167,
    48.64880840591746,
    'D',
    'Ris-Orangis',
    '91521',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:464040',
    'IDFM:C01728',
    'D',
    'Le Vert de Maisons',
    2.4321242678299977,
    48.78883131123265,
    'D',
    'Maisons-Alfort',
    '94046',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:415093',
    'IDFM:C01729',
    'E',
    'Neuilly Porte Maillot',
    2.284217509613705,
    48.878347804048644,
    'E',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58718',
    'IDFM:C01729',
    'E',
    'Haussmann Saint-Lazare',
    2.328646179742093,
    48.874998862001185,
    'E',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:462901',
    'IDFM:C01729',
    'E',
    'Ozoir-la-Ferrière',
    2.690116190500944,
    48.77076716837013,
    'E',
    'Ozoir-la-Ferrière',
    '77350',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43074',
    'IDFM:C01729',
    'E',
    'Émerainville - Pontault-Combault',
    2.618502939849115,
    48.80587944608123,
    'E',
    'Émerainville',
    '77169',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43223',
    'IDFM:C01729',
    'E',
    'Villiers-sur-Marne - Le Plessis-Trévise',
    2.542644466674205,
    48.82324786783017,
    'E',
    'Villiers-sur-Marne',
    '94079',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43207',
    'IDFM:C01742',
    'A',
    'Torcy',
    2.655169106193295,
    48.83971015133779,
    'A',
    'Torcy',
    '77468',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43152',
    'IDFM:C01742',
    'A',
    'Lognes',
    2.633026934567703,
    48.839255049438655,
    'A',
    'Lognes',
    '77258',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:474082',
    'IDFM:C01742',
    'A',
    'Noisy-le-Grand - Mont d''Est',
    2.550026754158765,
    48.84088525041221,
    'A',
    'Noisy-le-Grand',
    '93051',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47915',
    'IDFM:C01742',
    'A',
    'Achères Grand Cormier',
    2.0936529195192275,
    48.95541092942684,
    'A',
    'Saint-Germain-en-Laye',
    '78551',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43114',
    'IDFM:C01742',
    'A',
    'Conflans Fin d''Oise',
    2.0746499245710193,
    48.991156287258484,
    'A',
    'Conflans-Sainte-Honorine',
    '78172',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44559',
    'IDFM:C01742',
    'A',
    'Cergy Préfecture',
    2.0797809490013073,
    49.036306683133965,
    'A',
    'Cergy',
    '95127',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43234',
    'IDFM:C01742',
    'A',
    'Le Parc de Saint-Maur',
    2.486623744135692,
    48.8054097518155,
    'A',
    'Saint-Maur-des-Fossés',
    '94068',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45873',
    'IDFM:C01742',
    'A',
    'Auber',
    2.3296591495793595,
    48.872348840718196,
    'A',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:470549',
    'IDFM:C01742',
    'A',
    'La Défense',
    2.238418596250407,
    48.892229801568206,
    'A',
    'Puteaux',
    '92062',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43232',
    'IDFM:C01743',
    'B',
    'Le Guichet',
    2.1929739951487424,
    48.705497380193584,
    'B',
    'Orsay',
    '91471',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47046',
    'IDFM:C01743',
    'B',
    'La Hacquinière',
    2.1516106103390045,
    48.695299548452454,
    'B',
    'Bures-sur-Yvette',
    '91122',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47889',
    'IDFM:C01743',
    'B',
    'Saint-Rémy-lès-Chevreuse',
    2.071385742904064,
    48.702732696472715,
    'B',
    'Saint-Rémy-lès-Chevreuse',
    '78575',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46725',
    'IDFM:C01743',
    'B',
    'Villeparisis - Mitry-le-Neuf',
    2.603220561532749,
    48.95316214687084,
    'B',
    'Mitry-Mory',
    '77294',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46163',
    'IDFM:C01743',
    'B',
    'Le Blanc-Mesnil',
    2.4753884360764298,
    48.93230698220945,
    'B',
    'Le Blanc-Mesnil',
    '93007',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45877',
    'IDFM:C01743',
    'B',
    'Gentilly',
    2.340926830790754,
    48.815228092611335,
    'B',
    'Gentilly',
    '94037',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43607',
    'IDFM:C01743',
    'B',
    'Laplace',
    2.3343440158701894,
    48.808360137202826,
    'B',
    'Arcueil',
    '94003',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:44493',
    'IDFM:C01743',
    'B',
    'Bagneux',
    2.3220087047421583,
    48.79333690627149,
    'B',
    'Cachan',
    '94016',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43097',
    'IDFM:C01743',
    'B',
    'Bourg-la-Reine',
    2.312278311834309,
    48.78026436884244,
    'B',
    'Bourg-la-Reine',
    '92014',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43121',
    'IDFM:C01727',
    'C',
    'Dourdan',
    2.008756915662106,
    48.53376051220457,
    'C',
    'Dourdan',
    '91200',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47927',
    'IDFM:C01727',
    'C',
    'Gare de Chamarande',
    2.2151562718541644,
    48.51405318948937,
    'C',
    'Chamarande',
    '91132',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43202',
    'IDFM:C01727',
    'C',
    'Saint-Michel-sur-Orge',
    2.3068029676156123,
    48.635615525211605,
    'C',
    'Saint-Michel-sur-Orge',
    '91570',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43076',
    'IDFM:C01727',
    'C',
    'Épinay-sur-Orge',
    2.332043500451718,
    48.6693475106473,
    'C',
    'Épinay-sur-Orge',
    '91216',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45419',
    'IDFM:C01727',
    'C',
    'Avenue du Président Kennedy Maison de Radio France',
    2.279679454187814,
    48.85352548506894,
    'C',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47898',
    'IDFM:C01727',
    'C',
    'Ermont - Eaubonne',
    2.2707541014797794,
    48.98049890628609,
    'C',
    'Ermont',
    '95219',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47599',
    'IDFM:C01727',
    'C',
    'Saint-Ouen-l''Aumône',
    2.105230857870794,
    49.04530690087292,
    'C',
    'Saint-Ouen-l''Aumône',
    '95572',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47907',
    'IDFM:C01727',
    'C',
    'Pont de Rungis Aéroport d''Orly',
    2.373209854795934,
    48.74834625868034,
    'C',
    'Thiais',
    '94073',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46299',
    'IDFM:C01727',
    'C',
    'Orly Ville',
    2.4030548924063897,
    48.74163230680523,
    'C',
    'Orly',
    '94054',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:462357',
    'IDFM:C01727',
    'C',
    'Issy - Val de Seine',
    2.2640113460455353,
    48.83050964570215,
    'C',
    'Issy-les-Moulineaux',
    '92040',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47883',
    'IDFM:C01727',
    'C',
    'Chaville - Vélizy',
    2.1834187943404744,
    48.79968116446791,
    'C',
    'Viroflay',
    '78686',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47958',
    'IDFM:C01728',
    'D',
    'Survilliers - Fosses',
    2.525517836696695,
    49.09951161811565,
    'D',
    'Fosses',
    '95250',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47924',
    'IDFM:C01728',
    'D',
    'Boussy-Saint-Antoine',
    2.533195809235637,
    48.68087387117553,
    'D',
    'Boussy-Saint-Antoine',
    '91097',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46304',
    'IDFM:C01728',
    'D',
    'Villeneuve Triage',
    2.438697833840877,
    48.744611139140474,
    'D',
    'Villeneuve-Saint-Georges',
    '94078',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:462394',
    'IDFM:C01728',
    'D',
    'Gare du Nord',
    2.356693437528564,
    48.88230685842714,
    'D',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47876',
    'IDFM:C01728',
    'D',
    'Goussainville',
    2.4625658079312593,
    49.02341075826703,
    'D',
    'Goussainville',
    '95280',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47904',
    'IDFM:C01728',
    'D',
    'Villabé',
    2.461533386360794,
    48.592814943454,
    'D',
    'Villabé',
    '91659',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45824',
    'IDFM:C01728',
    'D',
    'Le Coudray-Montceaux',
    2.492424499497774,
    48.56619819315809,
    'D',
    'Le Coudray-Montceaux',
    '91179',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45814',
    'IDFM:C01728',
    'D',
    'Saint-Fargeau',
    2.5426100742385285,
    48.56502608446919,
    'D',
    'Saint-Fargeau-Ponthierry',
    '77407',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47909',
    'IDFM:C01728',
    'D',
    'Melun',
    2.65469836071817,
    48.527491277248295,
    'D',
    'Melun',
    '77288',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411485',
    'IDFM:C01728',
    'D',
    'Malesherbes',
    2.4010364417288774,
    48.293633291470464,
    'D',
    'Le Malesherbois',
    '45191',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43092',
    'IDFM:C01728',
    'D',
    'Boigneville',
    2.378618440416535,
    48.341208632507616,
    'D',
    'Boigneville',
    '91069',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47895',
    'IDFM:C01728',
    'D',
    'Boutigny',
    2.3767454804181263,
    48.43442542513416,
    'D',
    'Boutigny-sur-Essonne',
    '91099',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43225',
    'IDFM:C01728',
    'D',
    'Viry-Châtillon',
    2.387021960013403,
    48.67590783936994,
    'D',
    'Viry-Châtillon',
    '91687',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43211',
    'IDFM:C01729',
    'E',
    'Vaires - Torcy',
    2.637705554664271,
    48.87517306494243,
    'E',
    'Vaires-sur-Marne',
    '77479',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58879',
    'IDFM:C01729',
    'E',
    'Chelles - Gournay',
    2.5833806594500697,
    48.87411948897062,
    'E',
    'Chelles',
    '77108',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47901',
    'IDFM:C01729',
    'E',
    'Le Raincy - Villemomble - Montfermeil',
    2.5130610056844116,
    48.8888544132907,
    'E',
    'Villemomble',
    '93077',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43096',
    'IDFM:C01729',
    'E',
    'Bondy',
    2.4795800358385867,
    48.893965864676495,
    'E',
    'Bondy',
    '93010',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58498',
    'IDFM:C01729',
    'E',
    'Rosa Parks',
    2.3737182728654673,
    48.89645824176388,
    'E',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47900',
    'IDFM:C01729',
    'E',
    'Val de Fontenay',
    2.4890536307751616,
    48.85424654032024,
    'E',
    'Fontenay-sous-Bois',
    '94033',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47877',
    'IDFM:C01729',
    'E',
    'Rosny-sous-Bois',
    2.4857557993217947,
    48.87007067367753,
    'E',
    'Rosny-sous-Bois',
    '93064',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43101',
    'IDFM:C01742',
    'A',
    'Bry-sur-Marne',
    2.525670945020106,
    48.845137476280854,
    'A',
    'Bry-sur-Marne',
    '94015',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47874',
    'IDFM:C01742',
    'A',
    'Poissy',
    2.040804469960689,
    48.93324983956547,
    'A',
    'Poissy',
    '78498',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58792',
    'IDFM:C01742',
    'A',
    'Sucy - Bonneuil',
    2.5074994611650823,
    48.77206393780998,
    'A',
    'Sucy-en-Brie',
    '94071',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58270',
    'IDFM:C01742',
    'A',
    'Champigny',
    2.510538043646919,
    48.80682309456137,
    'A',
    'Saint-Maur-des-Fossés',
    '94068',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43135',
    'IDFM:C01742',
    'A',
    'Joinville-le-Pont',
    2.4638739495546496,
    48.82119737360793,
    'A',
    'Joinville-le-Pont',
    '94042',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:473875',
    'IDFM:C01742',
    'A',
    'Nation',
    2.3959444654495297,
    48.84823319072756,
    'A',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45102',
    'IDFM:C01742',
    'A',
    'Châtelet les Halles',
    2.34697651043533,
    48.86174503191322,
    'A',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58759',
    'IDFM:C01742',
    'A',
    'Charles de Gaulle - Etoile',
    2.295231447641207,
    48.874172759565376,
    'A',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43170',
    'IDFM:C01742',
    'A',
    'Nanterre Université',
    2.213536495127317,
    48.90112974604822,
    'A',
    'Nanterre',
    '92050',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:53783',
    'IDFM:C01742',
    'A',
    'Chatou - Croissy',
    2.1559376624708975,
    48.88519702561107,
    'A',
    'Chatou',
    '78146',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43198',
    'IDFM:C01742',
    'A',
    'Saint-Germain-en-Laye',
    2.095041912326374,
    48.898745300550765,
    'A',
    'Saint-Germain-en-Laye',
    '78551',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43103',
    'IDFM:C01743',
    'B',
    'Bures-sur-Yvette',
    2.1643461393269345,
    48.69621022314541,
    'B',
    'Bures-sur-Yvette',
    '91122',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58793',
    'IDFM:C01743',
    'B',
    'Villepinte',
    2.512783848981341,
    48.96256540760733,
    'B',
    'Villepinte',
    '93078',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43193',
    'IDFM:C01743',
    'B',
    'Sevran Beaudottes',
    2.5247262164471342,
    48.94700236504643,
    'B',
    'Sevran',
    '93071',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43140',
    'IDFM:C01743',
    'B',
    'La Courneuve - Aubervilliers',
    2.3861140570949475,
    48.92429743203911,
    'B',
    'La Courneuve',
    '93027',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:462394',
    'IDFM:C01743',
    'B',
    'Gare du Nord',
    2.356693437528564,
    48.88230685842714,
    'B',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:473843',
    'IDFM:C01743',
    'B',
    'Cité Universitaire',
    2.3388576809777035,
    48.82150600684166,
    'B',
    'Paris',
    '75056',
    'RapidTransit'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47894',
    'IDFM:C01730',
    'P',
    'Crécy-la-Chapelle',
    2.905450103333207,
    48.859557101380915,
    'P',
    'Crécy-la-Chapelle',
    '77142',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43211',
    'IDFM:C01730',
    'P',
    'Vaires - Torcy',
    2.637705554664271,
    48.87517306494243,
    'P',
    'Vaires-sur-Marne',
    '77479',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47491',
    'IDFM:C01730',
    'P',
    'Crouy-sur-Ourcq',
    3.062669111949777,
    49.09189047640195,
    'P',
    'Crouy-sur-Ourcq',
    '77148',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47943',
    'IDFM:C01730',
    'P',
    'Mouroux',
    3.0430626039871616,
    48.813701725231546,
    'P',
    'Mouroux',
    '77320',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43117',
    'IDFM:C01730',
    'P',
    'Coulommiers',
    3.0812613115733436,
    48.80805936234078,
    'P',
    'Coulommiers',
    '77131',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47174',
    'IDFM:C01730',
    'P',
    'Champbenoist Poigny',
    3.2866300417033125,
    48.54520762505785,
    'P',
    'Poigny',
    '77368',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:45804',
    'IDFM:C01731',
    'R',
    'Livry-sur-Seine',
    2.6789439431211646,
    48.510288065207455,
    'R',
    'Livry-sur-Seine',
    '77255',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43123',
    'IDFM:C01731',
    'R',
    'Fontaine-le-Port',
    2.750465255041539,
    48.48734840615557,
    'R',
    'Fontaine-le-Port',
    '77188',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47136',
    'IDFM:C01731',
    'R',
    'Vulaines-sur-Seine - Samoreau',
    2.752898337073854,
    48.430461048527036,
    'R',
    'Vulaines-sur-Seine',
    '77533',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47124',
    'IDFM:C01731',
    'R',
    'Bourron-Marlotte - Grez',
    2.6918764214147592,
    48.332451033464054,
    'R',
    'Bourron-Marlotte',
    '77048',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47911',
    'IDFM:C01731',
    'R',
    'Fontainebleau - Avon',
    2.7267714287220346,
    48.416666098921,
    'R',
    'Avon',
    '77014',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47961',
    'IDFM:C01731',
    'R',
    'Thomery',
    2.764187149192088,
    48.39428183783365,
    'R',
    'Fontainebleau',
    '77186',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47910',
    'IDFM:C01731',
    'R',
    'Montereau',
    2.942541935520315,
    48.37960363189276,
    'R',
    'Montereau-Fault-Yonne',
    '77305',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46850',
    'IDFM:C01736',
    'N',
    'Montfort-l''Amaury - Méré',
    1.8158352700699214,
    48.802662371849536,
    'N',
    'Méré',
    '78389',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411495',
    'IDFM:C01736',
    'N',
    'Marchezais - Broué',
    1.5135715190299066,
    48.76839076858962,
    'N',
    'Broué',
    '28062',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47884',
    'IDFM:C01736',
    'N',
    'Fontenay-le-Fleury',
    2.0407045118857456,
    48.807273444277804,
    'N',
    'Fontenay-le-Fleury',
    '78242',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43238',
    'IDFM:C01736',
    'N',
    'Gare Montparnasse',
    2.316388731382968,
    48.83841119933774,
    'N',
    'Paris',
    '75056',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46990',
    'IDFM:C01736',
    'N',
    'Saint-Cyr',
    2.072712440765476,
    48.79877460471833,
    'N',
    'Saint-Cyr-l''École',
    '78545',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:427870',
    'IDFM:C01736',
    'N',
    'Rambouillet',
    1.832207614506548,
    48.6438460126836,
    'N',
    'Rambouillet',
    '78517',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47525',
    'IDFM:C01737',
    'H',
    'Viarmes',
    2.3682376422969282,
    49.11663481669089,
    'H',
    'Viarmes',
    '95652',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43105',
    'IDFM:C01737',
    'H',
    'Cernay',
    2.257017857907824,
    48.985149200200375,
    'H',
    'Ermont',
    '95219',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43190',
    'IDFM:C01737',
    'H',
    'Sarcelles - Saint-Brice',
    2.3686856352535353,
    48.99620491669132,
    'H',
    'Saint-Brice-sous-Forêt',
    '95539',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411326',
    'IDFM:C01737',
    'H',
    'Précy-sur-Oise',
    2.377341204610025,
    49.20347714232073,
    'H',
    'Précy-sur-Oise',
    '60513',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411332',
    'IDFM:C01737',
    'H',
    'Boran-sur-Oise',
    2.362237794019318,
    49.16664871633883,
    'H',
    'Boran-sur-Oise',
    '60086',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47590',
    'IDFM:C01737',
    'H',
    'Champagne-sur-Oise',
    2.242987667830016,
    49.136089580289706,
    'H',
    'Champagne-sur-Oise',
    '95134',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43090',
    'IDFM:C01737',
    'H',
    'Bessancourt',
    2.2103009348975013,
    49.03527556641014,
    'H',
    'Bessancourt',
    '95060',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47963',
    'IDFM:C01737',
    'H',
    'Vaucelles',
    2.2294526219892656,
    49.02172683988197,
    'H',
    'Taverny',
    '95607',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411396',
    'IDFM:C01738',
    'K',
    'Crépy-en-Valois',
    2.8880999806451184,
    49.23108254935135,
    'K',
    'Crépy-en-Valois',
    '60176',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411387',
    'IDFM:C01738',
    'K',
    'Ormoy-Villers',
    2.8379866073485736,
    49.20071099536894,
    'K',
    'Ormoy-Villers',
    '60479',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46736',
    'IDFM:C01738',
    'K',
    'Dammartin - Juilly - Saint-Mard',
    2.699046819624294,
    49.03215183565455,
    'K',
    'Saint-Mard',
    '77420',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43071',
    'IDFM:C01738',
    'K',
    'Aulnay-sous-Bois',
    2.495597257086315,
    48.932150935734064,
    'K',
    'Aulnay-sous-Bois',
    '93005',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43151',
    'IDFM:C01739',
    'J',
    'Limay',
    1.7474125098984148,
    48.98420212754175,
    'J',
    'Limay',
    '78335',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43114',
    'IDFM:C01739',
    'J',
    'Conflans Fin d''Oise',
    2.0746499245710193,
    48.991156287258484,
    'J',
    'Conflans-Sainte-Honorine',
    '78172',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43189',
    'IDFM:C01739',
    'J',
    'Sannois',
    2.263820283806777,
    48.970881176549405,
    'J',
    'Sannois',
    '95582',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411338',
    'IDFM:C01739',
    'J',
    'Trie-Château',
    1.818497020989674,
    49.2824007109848,
    'J',
    'Trie-Château',
    '60644',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:411342',
    'IDFM:C01739',
    'J',
    'Liancourt-Saint-Pierre',
    1.9054790812050526,
    49.22054256178432,
    'J',
    'Liancourt-Saint-Pierre',
    '60361',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47447',
    'IDFM:C01739',
    'J',
    'Conflans-Sainte-Honorine',
    2.09871661352047,
    48.996919424234726,
    'J',
    'Conflans-Sainte-Honorine',
    '78172',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47875',
    'IDFM:C01739',
    'J',
    'Argenteuil',
    2.257913508915154,
    48.9468952901277,
    'J',
    'Argenteuil',
    '95018',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43236',
    'IDFM:C01739',
    'J',
    'Le Stade',
    2.260948512567054,
    48.93172049557505,
    'J',
    'Colombes',
    '92025',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43069',
    'IDFM:C01739',
    'J',
    'Asnières-sur-Seine',
    2.2832114335873186,
    48.90587474197106,
    'J',
    'Asnières-sur-Seine',
    '92004',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47937',
    'IDFM:C01740',
    'L',
    'L''Étang-la-Ville',
    2.076893601882248,
    48.86818814962987,
    'L',
    'L''Étang-la-Ville',
    '78224',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43104',
    'IDFM:C01740',
    'L',
    'Cergy le Haut',
    2.011579068023536,
    49.04823262405815,
    'L',
    'Cergy',
    '95127',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:470549',
    'IDFM:C01740',
    'L',
    'La Défense',
    2.238418596250407,
    48.892229801568206,
    'L',
    'Puteaux',
    '92062',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46689',
    'IDFM:C01740',
    'L',
    'Viroflay Rive Droite',
    2.1676545647835206,
    48.805472581494975,
    'L',
    'Viroflay',
    '78686',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43082',
    'IDFM:C01740',
    'L',
    'Houilles - Carrières-sur-Seine',
    2.1851757042018707,
    48.92034757911033,
    'L',
    'Houilles',
    '78311',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47915',
    'IDFM:C01740',
    'L',
    'Achères Grand Cormier',
    2.0936529195192275,
    48.95541092942684,
    'L',
    'Saint-Germain-en-Laye',
    '78551',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:47874',
    'IDFM:C01740',
    'L',
    'Poissy',
    2.040804469960689,
    48.93324983956547,
    'L',
    'Poissy',
    '78498',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:46990',
    'IDFM:C01741',
    'U',
    'Saint-Cyr',
    2.072712440765476,
    48.79877460471833,
    'U',
    'Saint-Cyr-l''École',
    '78545',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:58774',
    'IDFM:C02711',
    'V',
    'Massy - Palaiseau',
    2.2587677282577334,
    48.72551907437078,
    'V',
    'Massy',
    '91377',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:57674',
    'IDFM:C02711',
    'V',
    'Petit Jouy Les Loges',
    2.1468519693445356,
    48.77123768805397,
    'V',
    'Jouy-en-Josas',
    '78322',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:monomodalStopPlace:43219',
    'IDFM:C02711',
    'V',
    'Versailles Chantiers',
    2.1349078603373464,
    48.79526039893613,
    'V',
    'Versailles',
    '78646',
    'LocalTrain'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22086',
    'IDFM:C01371',
    '1',
    'Charles de Gaulle - Etoile',
    2.2951172138230334,
    48.87392926445533,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22082',
    'IDFM:C01371',
    '1',
    'Franklin D. Roosevelt',
    2.309359666519628,
    48.8691648256349,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463080',
    'IDFM:C01371',
    '1',
    'Hôtel de Ville',
    2.3520676701391,
    48.85735240518587,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22083',
    'IDFM:C01371',
    '1',
    'Gare de Lyon',
    2.3731565937892047,
    48.8456832067358,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22076',
    'IDFM:C01371',
    '1',
    'Reuilly - Diderot',
    2.386056169673362,
    48.84723403765801,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22077',
    'IDFM:C01371',
    '1',
    'Porte de Vincennes',
    2.4108049967015006,
    48.84700773108863,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22103',
    'IDFM:C01371',
    '1',
    'Saint-Mandé',
    2.4189623545327077,
    48.846238208060065,
    '1',
    'Saint-Mandé',
    '94067',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463130',
    'IDFM:C01371',
    '1',
    'Bérault',
    2.4292278831660283,
    48.845491696267075,
    '1',
    'Vincennes',
    '94080',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462943',
    'IDFM:C01371',
    '1',
    'Nation',
    2.395825965451431,
    48.84816963759798,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463294',
    'IDFM:C01371',
    '1',
    'Reuilly - Diderot',
    2.3858367760086865,
    48.84734982784612,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463150',
    'IDFM:C01371',
    '1',
    'Concorde',
    2.3229614457982586,
    48.866557992949716,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463181',
    'IDFM:C01371',
    '1',
    'Franklin D. Roosevelt',
    2.309434325751582,
    48.86925069418826,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22088',
    'IDFM:C01371',
    '1',
    'Argentine',
    2.289435418542214,
    48.87566737659971,
    '1',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463217',
    'IDFM:C01371',
    '1',
    'Les Sablons',
    2.271904762259129,
    48.88129083793358,
    '1',
    'Neuilly-sur-Seine',
    '92051',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22072',
    'IDFM:C01372',
    '2',
    'Nation',
    2.3957988351125254,
    48.84845279707999,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22124',
    'IDFM:C01372',
    '2',
    'Avron',
    2.3981875566593973,
    48.85164854359716,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22112',
    'IDFM:C01372',
    '2',
    'Père Lachaise',
    2.3876893260656895,
    48.86248637862667,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22116',
    'IDFM:C01372',
    '2',
    'Ménilmontant',
    2.38353966877949,
    48.866440166781686,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22114',
    'IDFM:C01372',
    '2',
    'Pigalle',
    2.338257976509587,
    48.882269542226226,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463296',
    'IDFM:C01372',
    '2',
    'Rome',
    2.3213591738229726,
    48.88234581879614,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22094',
    'IDFM:C01372',
    '2',
    'Charles de Gaulle - Etoile',
    2.2958117752357627,
    48.87499457617108,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463322',
    'IDFM:C01372',
    '2',
    'Victor Hugo',
    2.2858287659129797,
    48.869926082410636,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22111',
    'IDFM:C01372',
    '2',
    'Porte Dauphine',
    2.2776327175452717,
    48.871396795248316,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463120',
    'IDFM:C01372',
    '2',
    'Anvers',
    2.3441548403302916,
    48.882868568843925,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463243',
    'IDFM:C01372',
    '2',
    'Ménilmontant',
    2.3834303882303045,
    48.866390140145434,
    '2',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22028',
    'IDFM:C01373',
    '3',
    'Wagram',
    2.3046251407269573,
    48.88376067556563,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22031',
    'IDFM:C01373',
    '3',
    'Malesherbes',
    2.3094384103380805,
    48.882763294053696,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463090',
    'IDFM:C01373',
    '3',
    'Bourse',
    2.3406519668083314,
    48.868738736969725,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463316',
    'IDFM:C01373',
    '3',
    'Temple',
    2.3615893783321895,
    48.86668483219092,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22025',
    'IDFM:C01373',
    '3',
    'Rue Saint-Maur',
    2.380486332251813,
    48.86413108020325,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22019',
    'IDFM:C01373',
    '3',
    'Parmentier',
    2.3747205969196896,
    48.86524326053047,
    '3',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462985',
    'IDFM:C01373',
    '3',
    'Pont de Levallois - Bécon',
    2.28030375318625,
    48.89722831603318,
    '3',
    'Levallois-Perret',
    '92044',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463073',
    'IDFM:C01374',
    '4',
    'Porte de Clignancourt',
    2.344624099102791,
    48.897525631278015,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463148',
    'IDFM:C01374',
    '4',
    'Château Rouge',
    2.3493658080048405,
    48.88707887746752,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22137',
    'IDFM:C01374',
    '4',
    'Saint-Michel',
    2.343964657062377,
    48.85358493521485,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22139',
    'IDFM:C01374',
    '4',
    'Saint-Sulpice',
    2.330611953081543,
    48.85120862756671,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22143',
    'IDFM:C01374',
    '4',
    'Montparnasse Bienvenue',
    2.3243294607791096,
    48.84385251452581,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22140',
    'IDFM:C01374',
    '4',
    'Porte d''Orléans',
    2.3254932653821045,
    48.823416351140224,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:483313',
    'IDFM:C01374',
    '4',
    'Barbara',
    2.3174174096489284,
    48.8097987811254,
    '4',
    'Bagneux',
    '92007',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22151',
    'IDFM:C01374',
    '4',
    'Denfert-Rochereau',
    2.3321281604376116,
    48.83392232305997,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463308',
    'IDFM:C01374',
    '4',
    'Saint-Placide',
    2.327054815066312,
    48.84700665158937,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463306',
    'IDFM:C01374',
    '4',
    'Saint-Michel',
    2.343991799033288,
    48.85359407756809,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463158',
    'IDFM:C01374',
    '4',
    'Châtelet',
    2.3467600097151675,
    48.85971581985686,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22134',
    'IDFM:C01374',
    '4',
    'Strasbourg - Saint-Denis',
    2.354491616563834,
    48.86962358263758,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22153',
    'IDFM:C01374',
    '4',
    'Château d''Eau',
    2.3560517414015862,
    48.87244691759551,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463093',
    'IDFM:C01374',
    '4',
    'Barbès - Rochechouart',
    2.3497455480753806,
    48.88342517173516,
    '4',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463017',
    'IDFM:C01375',
    '5',
    'Hoche',
    2.403114154894396,
    48.891495749437304,
    '5',
    'Pantin',
    '93055',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22000',
    'IDFM:C01375',
    '5',
    'Saint-Marcel',
    2.3606397867113924,
    48.83853898898134,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22009',
    'IDFM:C01375',
    '5',
    'Campo-Formio',
    2.358468834639247,
    48.835595431233266,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22004',
    'IDFM:C01375',
    '5',
    'Quai de la Rapée',
    2.365992890937552,
    48.84649085420337,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463138',
    'IDFM:C01375',
    '5',
    'Bréguet-Sabin',
    2.3703346849773035,
    48.8562178110506,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462961',
    'IDFM:C01375',
    '5',
    'République',
    2.3641925544688656,
    48.867732931981166,
    '5',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463128',
    'IDFM:C01376',
    '6',
    'Bercy',
    2.3794765872566757,
    48.84018509185968,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22174',
    'IDFM:C01376',
    '6',
    'Chevaleret',
    2.368081282972743,
    48.83496308210916,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22155',
    'IDFM:C01376',
    '6',
    'Raspail',
    2.330549660589195,
    48.83908487281128,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463102',
    'IDFM:C01376',
    '6',
    'Kléber',
    2.2933259179892325,
    48.871301612039105,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22180',
    'IDFM:C01376',
    '6',
    'Boissière',
    2.2900328376074373,
    48.8668483434173,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463101',
    'IDFM:C01376',
    '6',
    'Passy',
    2.2855802300954733,
    48.8575315296204,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22162',
    'IDFM:C01376',
    '6',
    'La Motte-Picquet - Grenelle',
    2.298906224573169,
    48.848697697821954,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463140',
    'IDFM:C01376',
    '6',
    'Cambronne',
    2.302898786915822,
    48.84749339701438,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463305',
    'IDFM:C01376',
    '6',
    'Saint-Jacques',
    2.3370965389054956,
    48.832857226540206,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22168',
    'IDFM:C01376',
    '6',
    'Place d''Italie',
    2.356101612721528,
    48.830914982874944,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22169',
    'IDFM:C01376',
    '6',
    'Nationale',
    2.362857958087621,
    48.83318160406702,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463147',
    'IDFM:C01376',
    '6',
    'Chevaleret',
    2.3680951237726693,
    48.83494516788824,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463028',
    'IDFM:C01376',
    '6',
    'Nation',
    2.3957883190257903,
    48.84789064769285,
    '6',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463029',
    'IDFM:C01377',
    '7',
    'Porte d''Ivry',
    2.369294978223312,
    48.821352988336876,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22372',
    'IDFM:C01377',
    '7',
    'Porte d''Ivry',
    2.3695112543194927,
    48.821489035562834,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463235',
    'IDFM:C01377',
    '7',
    'Porte d''Italie',
    2.3595297331071694,
    48.81910659655869,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463232',
    'IDFM:C01377',
    '7',
    'Pont Neuf',
    2.341776749148542,
    48.85854633926832,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22371',
    'IDFM:C01377',
    '7',
    'Riquet',
    2.3737641527012556,
    48.88810829453359,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22389',
    'IDFM:C01377',
    '7',
    'Corentin Cariou',
    2.382291557164633,
    48.89467266005628,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22374',
    'IDFM:C01377',
    '7',
    'Porte de la Villette',
    2.385869033143345,
    48.89780269235572,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463179',
    'IDFM:C01377',
    '7',
    'Fort d''Aubervilliers',
    2.404187821795194,
    48.91470775289347,
    '7',
    'Aubervilliers',
    '93001',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463006',
    'IDFM:C01377',
    '7',
    'Château Landon',
    2.3620450936034145,
    48.87845059378512,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22381',
    'IDFM:C01377',
    '7',
    'Opéra',
    2.3324387808144875,
    48.87030303390994,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22365',
    'IDFM:C01377',
    '7',
    'Place d''Italie',
    2.355303769754901,
    48.83154024475565,
    '7',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22399',
    'IDFM:C01377',
    '7',
    'Villejuif Léo Lagrange',
    2.3639317476477353,
    48.80435318028833,
    '7',
    'Villejuif',
    '94076',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463199',
    'IDFM:C01378',
    '8',
    'Invalides',
    2.314996938416133,
    48.86059945384315,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22194',
    'IDFM:C01378',
    '8',
    'Madeleine',
    2.3260272117729994,
    48.86956561611772,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463037',
    'IDFM:C01378',
    '8',
    'Richelieu - Drouot',
    2.3384603609547776,
    48.87164051013642,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463195',
    'IDFM:C01378',
    '8',
    'Ledru-Rollin',
    2.375924913735691,
    48.85119274222268,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463293',
    'IDFM:C01378',
    '8',
    'Reuilly - Diderot',
    2.3869585404965377,
    48.847094767969466,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22215',
    'IDFM:C01378',
    '8',
    'Maisons-Alfort - Stade',
    2.434819533389365,
    48.80891847848263,
    '8',
    'Maisons-Alfort',
    '94046',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22212',
    'IDFM:C01378',
    '8',
    'Créteil - Université',
    2.450529196348293,
    48.789915686006935,
    '8',
    'Créteil',
    '94028',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22184',
    'IDFM:C01378',
    '8',
    'Daumesnil',
    2.395573606140371,
    48.83967393140864,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22098',
    'IDFM:C01378',
    '8',
    'Reuilly - Diderot',
    2.3872010704093922,
    48.84721292669797,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22203',
    'IDFM:C01378',
    '8',
    'Ledru-Rollin',
    2.3761412233185926,
    48.85133776679838,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22200',
    'IDFM:C01378',
    '8',
    'Filles du Calvaire',
    2.366826859795412,
    48.86308830188695,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463151',
    'IDFM:C01378',
    '8',
    'Concorde',
    2.321915152849789,
    48.86656106315263,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463204',
    'IDFM:C01378',
    '8',
    'La Tour-Maubourg',
    2.3104735359369846,
    48.85772702353455,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463163',
    'IDFM:C01378',
    '8',
    'Félix Faure',
    2.291751809719901,
    48.84274672574357,
    '8',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21938',
    'IDFM:C01379',
    '9',
    'Pont de Sèvres',
    2.2305185727726955,
    48.82968726438348,
    '9',
    'Boulogne-Billancourt',
    '92012',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462914',
    'IDFM:C01379',
    '9',
    'Marcel Sembat',
    2.243583048618053,
    48.83359298218974,
    '9',
    'Boulogne-Billancourt',
    '92012',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21930',
    'IDFM:C01379',
    '9',
    'Exelmans',
    2.259800845144346,
    48.84258027627653,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21928',
    'IDFM:C01379',
    '9',
    'Jasmin',
    2.268219083521012,
    48.852462147844555,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462915',
    'IDFM:C01379',
    '9',
    'Saint-Philippe-du-Roule',
    2.3101372056878247,
    48.87215513107743,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21911',
    'IDFM:C01379',
    '9',
    'Saint-Augustin',
    2.3210135978085997,
    48.87454661293485,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21921',
    'IDFM:C01379',
    '9',
    'Richelieu - Drouot',
    2.3385912215385414,
    48.872135870317955,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21918',
    'IDFM:C01379',
    '9',
    'République',
    2.3631211111325285,
    48.86739447922248,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21925',
    'IDFM:C01379',
    '9',
    'Oberkampf',
    2.3681558453945515,
    48.86477709852134,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22442',
    'IDFM:C01379',
    '9',
    'Rue des Boulets',
    2.3891047050322425,
    48.85221407333194,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463298',
    'IDFM:C01379',
    '9',
    'Rue des Boulets',
    2.389429968854563,
    48.85236862327955,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463299',
    'IDFM:C01379',
    '9',
    'Saint-Ambroise',
    2.3739964519221886,
    48.861480218467655,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463054',
    'IDFM:C01379',
    '9',
    'Oberkampf',
    2.3682236708807456,
    48.86487188759515,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21933',
    'IDFM:C01379',
    '9',
    'Bonne Nouvelle',
    2.3484940979375373,
    48.8706433160169,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21912',
    'IDFM:C01379',
    '9',
    'Saint-Philippe-du-Roule',
    2.310001699600818,
    48.87215435003593,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21935',
    'IDFM:C01379',
    '9',
    'Alma - Marceau',
    2.301130527470699,
    48.8647282422178,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463055',
    'IDFM:C01379',
    '9',
    'Rue de la Pompe',
    2.277916063289398,
    48.86403732937509,
    '9',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21940',
    'IDFM:C01379',
    '9',
    'Marcel Sembat',
    2.24346821405889,
    48.83380810724753,
    '9',
    'Boulogne-Billancourt',
    '92012',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463137',
    'IDFM:C01380',
    '10',
    'Boulogne Jean Jaurès',
    2.239077780728926,
    48.841991575324506,
    '10',
    'Boulogne-Billancourt',
    '92012',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21987',
    'IDFM:C01380',
    '10',
    'Avenue Émile Zola',
    2.2950459810371475,
    48.84695722990175,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463024',
    'IDFM:C01380',
    '10',
    'Gare d''Austerlitz',
    2.364395394600644,
    48.84228236697996,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463077',
    'IDFM:C01380',
    '10',
    'Jussieu',
    2.354944184375758,
    48.8462878950311,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21983',
    'IDFM:C01380',
    '10',
    'Cluny - La Sorbonne',
    2.3448963012120796,
    48.851026876874485,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462998',
    'IDFM:C01380',
    '10',
    'Odéon',
    2.340692291066523,
    48.85202455451491,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462967',
    'IDFM:C01380',
    '10',
    'Sèvres - Babylone',
    2.3261490660967246,
    48.85112511792463,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21979',
    'IDFM:C01380',
    '10',
    'Ségur',
    2.3072520746428715,
    48.847226390053955,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463124',
    'IDFM:C01380',
    '10',
    'Avenue Émile Zola',
    2.2950189971435506,
    48.84703801370517,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21971',
    'IDFM:C01380',
    '10',
    'Église d''Auteuil',
    2.2691113890218917,
    48.84714336145718,
    '10',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462945',
    'IDFM:C01381',
    '11',
    'Rambuteau',
    2.3532739485947713,
    48.86119015695036,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21949',
    'IDFM:C01381',
    '11',
    'Porte des Lilas',
    2.4065226763982275,
    48.87723143067265,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490793',
    'IDFM:C01381',
    '11',
    'Rosny-Bois-Perrier',
    2.480609800808591,
    48.88302567942574,
    '11',
    'Rosny-sous-Bois',
    '93064',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490772',
    'IDFM:C01381',
    '11',
    'Rosny-Bois-Perrier',
    2.4806093523524932,
    48.88307064342213,
    '11',
    'Rosny-sous-Bois',
    '93064',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490768',
    'IDFM:C01381',
    '11',
    'La Dhuys',
    2.4651563455784005,
    48.87808331706366,
    '11',
    'Rosny-sous-Bois',
    '93064',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21992',
    'IDFM:C01381',
    '11',
    'Rambuteau',
    2.3532739485947713,
    48.86119015695036,
    '11',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:483903',
    'IDFM:C01382',
    '12',
    'Aimé Césaire',
    2.378035995881576,
    48.90838312983791,
    '12',
    'Aubervilliers',
    '93001',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:24679',
    'IDFM:C01382',
    '12',
    'Front Populaire',
    2.365777177193171,
    48.906763048164294,
    '12',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463317',
    'IDFM:C01382',
    '12',
    'Trinité - d''Estienne d''Orves',
    2.333049172418236,
    48.87633650730735,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22060',
    'IDFM:C01382',
    '12',
    'Assemblée Nationale',
    2.320575836647556,
    48.861071939526084,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22038',
    'IDFM:C01382',
    '12',
    'Montparnasse Bienvenue',
    2.323989185205003,
    48.84382361125447,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22042',
    'IDFM:C01382',
    '12',
    'Porte de Versailles',
    2.2881329450932197,
    48.83230151439446,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462947',
    'IDFM:C01382',
    '12',
    'Pasteur',
    2.3126518981045816,
    48.84282366881032,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462969',
    'IDFM:C01382',
    '12',
    'Saint-Lazare',
    2.327470237303278,
    48.875594817796994,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22040',
    'IDFM:C01382',
    '12',
    'Pigalle',
    2.3371840091053384,
    48.882011788411084,
    '12',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463082',
    'IDFM:C01382',
    '12',
    'Front Populaire',
    2.3657920239894126,
    48.90666420278779,
    '12',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:483900',
    'IDFM:C01382',
    '12',
    'Aimé Césaire',
    2.37813084516706,
    48.90843758066954,
    '12',
    'Aubervilliers',
    '93001',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462951',
    'IDFM:C01383',
    '13',
    'Porte de Saint-Ouen',
    2.3290209467099534,
    48.89750667705023,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:478395',
    'IDFM:C01383',
    '13',
    'La Fourche',
    2.325414931297021,
    48.88736901850862,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463086',
    'IDFM:C01383',
    '13',
    'Mairie de Clichy',
    2.305726300569584,
    48.90344880444455,
    '13',
    'Clichy',
    '92024',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:474397',
    'IDFM:C01383',
    '13',
    'Miromesnil',
    2.3159507090192264,
    48.87344757302508,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463184',
    'IDFM:C01383',
    '13',
    'Gaîté',
    2.3223539967788067,
    48.83852608502253,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463229',
    'IDFM:C01383',
    '13',
    'Pernety',
    2.318323659736018,
    48.83416372097089,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:462976',
    'IDFM:C01383',
    '13',
    'Carrefour Pleyel',
    2.3435346741834655,
    48.919732608049756,
    '13',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463302',
    'IDFM:C01383',
    '13',
    'Saint-Denis - Université',
    2.364530774042862,
    48.9458307173959,
    '13',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22237',
    'IDFM:C01383',
    '13',
    'Châtillon-Montrouge',
    2.301717705004608,
    48.81075140670139,
    '13',
    'Châtillon',
    '92020',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463213',
    'IDFM:C01383',
    '13',
    'Malakoff - Plateau de Vanves',
    2.2984111759006174,
    48.82214529059278,
    '13',
    'Malakoff',
    '92046',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22157',
    'IDFM:C01383',
    '13',
    'Montparnasse Bienvenue',
    2.320983883036087,
    48.84231364506487,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22226',
    'IDFM:C01383',
    '13',
    'Varenne',
    2.315113930509657,
    48.85662498274656,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463198',
    'IDFM:C01383',
    '13',
    'Invalides',
    2.3145404484362686,
    48.86084865840772,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22224',
    'IDFM:C01383',
    '13',
    'Miromesnil',
    2.3160106931210245,
    48.87344791579522,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22225',
    'IDFM:C01383',
    '13',
    'Liège',
    2.3268526712397555,
    48.87953493737576,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22219',
    'IDFM:C01383',
    '13',
    'Porte de Clichy',
    2.3136590957118313,
    48.89464071673921,
    '13',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:22232',
    'IDFM:C01383',
    '13',
    'Les Agnettes',
    2.286263202479002,
    48.92308777796361,
    '13',
    'Gennevilliers',
    '92036',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:463045',
    'IDFM:C01384',
    '14',
    'Olympiades',
    2.367034270941924,
    48.826944155043044,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21958',
    'IDFM:C01384',
    '14',
    'Gare de Lyon',
    2.372519782814122,
    48.8442498880687,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:480340',
    'IDFM:C01384',
    '14',
    'Pont Cardinet',
    2.3153681405051527,
    48.88810340364297,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:480531',
    'IDFM:C01384',
    '14',
    'Porte de Clichy',
    2.313404000186253,
    48.894333484274206,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:480341',
    'IDFM:C01384',
    '14',
    'Saint-Ouen',
    2.3227559546697414,
    48.90516956991565,
    '14',
    'Saint-Ouen-sur-Seine',
    '93070',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490794',
    'IDFM:C01384',
    '14',
    'Saint-Denis - Pleyel',
    2.345886129823062,
    48.91873375567987,
    '14',
    'Saint-Denis',
    '93066',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:480288',
    'IDFM:C01384',
    '14',
    'Saint-Ouen',
    2.3226598821131716,
    48.90521399238465,
    '14',
    'Saint-Ouen-sur-Seine',
    '93070',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21961',
    'IDFM:C01384',
    '14',
    'Madeleine',
    2.3258100487932776,
    48.87054467671624,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:21955',
    'IDFM:C01384',
    '14',
    'Bibliothèque François Mitterrand',
    2.3764237443204546,
    48.830006377536904,
    '14',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:490851',
    'IDFM:C01384',
    '14',
    'Chevilly-Larue​ (Marché International​)',
    2.367374604185919,
    48.75848356146962,
    '14',
    'Chevilly-Larue',
    '94021',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:24680',
    'IDFM:C01387',
    '7B',
    'Jaurès',
    2.370451734004561,
    48.882344230208226,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:24686',
    'IDFM:C01387',
    '7B',
    'Botzaris',
    2.388908111185046,
    48.87943610160117,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:24682',
    'IDFM:C01387',
    '7B',
    'Place des Fêtes',
    2.392959616507311,
    48.87693859004261,
    '7B',
    'Paris',
    '75056',
    'Metro'
);

INSERT INTO transit_stop (
    id,
    route_id,
    route_long_name,
    stop_name,
    stop_lon,
    stop_lat,
    shortname,
    nom_commune,
    code_insee,
    mode
) VALUES (
    'IDFM:24683',
    'IDFM:C01387',
    '7B',
    'Buttes Chaumont',
    2.381569842088008,
    48.87849908839857,
    '7B',
    'Paris',
    '75056',
    'Metro'
);
