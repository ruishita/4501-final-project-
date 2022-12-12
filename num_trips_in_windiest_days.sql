
    SELECT strftime('%Y-%m-%d', pickupDateTime) AS windiestDay, count(*) 
    FROM (
        SELECT pickupDateTime
        FROM taxiTrips
        UNION ALL
        SELECT pickupDateTime
        FROM uberTrips
    )
    WHERE windiestDay IN ( 
        SELECT strftime('%Y-%m-%d', day)
        FROM dailyWeather
        WHERE strftime('%Y', day) == '2014'
        ORDER BY dailyWindSpeed DESC LIMIT 10
    )
    GROUP BY windiestDay
