
    SELECT strftime('%H', pickupDateTime) AS hourOfDay, count(*) AS numTrips
    FROM taxiTrips
    GROUP BY hourOfDay
    ORDER BY numTrips DESC
