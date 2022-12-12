
    WITH RECURSIVE hours(x) AS (
        SELECT '2012-10-30 23:00:00'
        UNION ALL
        SELECT DATETIME(x, '-1 hours') FROM hours WHERE x > '2012-10-22 00:00:00'
    ),
    trips(x) AS (
        SELECT pickupDateTime
        FROM taxiTrips
        UNION ALL
        SELECT pickupDateTime
        FROM uberTrips
    ),
    hourly_trips(hour, numTrips) AS (
        SELECT strftime('%Y-%m-%d-%H', hours.x) AS hour, count(*)
        FROM hours, trips
        WHERE hour == strftime('%Y-%m-%d-%H', trips.x)
        GROUP BY hour
    )
    SELECT hourly_trips.hour, numTrips, hourlyWeather.hourlyPrecipitation
    FROM hourly_trips, hourlyWeather
    WHERE hourly_trips.hour == strftime('%Y-%m-%d', hourlyWeather.day) || '-' || hourlyWeather.hour 
    ORDER BY hourly_trips.hour ASC
