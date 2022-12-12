
    SELECT strftime('%w', pickupDateTime) AS dayOfWeek, count(*) AS numTrips
    FROM uberTrips
    GROUP BY dayOfWeek
    ORDER BY numTrips DESC
