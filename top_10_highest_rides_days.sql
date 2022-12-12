
    SELECT date, COUNT(distance) AS countOfday, AVG(distance) from (
        SELECT strftime('%m-%d', pickupDateTime) as date, distance
        FROM taxiTrips
        WHERE strftime('%Y', pickupDateTime) == '2009'
        UNION ALL
        SELECT strftime('%m-%d', pickupDateTime) AS date, distance
        FROM uberTrips
        WHERE strftime('%Y', pickupDateTime) == '2009'
    )
    GROUP BY date
    ORDER BY countOfday DESC LIMIT 10
