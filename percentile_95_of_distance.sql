
    
    WITH distance AS (
        SELECT distance FROM (
            SELECT pickupDateTime, distance
            FROM taxiTrips
            UNION ALL
            SELECT pickupDateTime, distance
            FROM uberTrips
        )
        WHERE strftime('%Y-%m', pickupDateTime) == '2013-07'
    )
    SELECT * 
    FROM distance
    ORDER BY distance ASC 
    LIMIT 1
    OFFSET (SELECT count(*) FROM distance) * 95 / 100 - 1
