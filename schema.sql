
CREATE TABLE IF NOT EXISTS hourlyWeather (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    day DATE,
    hour INTEGER,
    hourlyWindSpeed,
    hourlyPrecipitation
);

CREATE TABLE IF NOT EXISTS dailyWeather (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    day DATE,
    dailyWindSpeed,
    dailyPrecipitation
);

CREATE TABLE IF NOT EXISTS taxiTrips (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pickupDateTime DATETIME,
    dropoffDateTime DATETIME,
    pickupLon FLOAT,
    pickupLat FLOAT,
    dropoffLon FLOAT,
    dropoffLat FLOAT,
    distance FLOAT,
    tipAmt FLOAT
);

CREATE TABLE IF NOT EXISTS uberTrips (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pickupDateTime DATETIME,
    pickupLon FLOAT,
    pickupLat FLOAT,
    dropoffLon FLOAT,
    dropoffLat FLOAT,
    distance FLOAT
);
