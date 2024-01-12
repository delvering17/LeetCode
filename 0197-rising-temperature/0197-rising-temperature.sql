SELECT
    after_weather.id
FROM
    Weather AS after_weather
INNER JOIN
    Weather AS before_weather
    ON after_weather.recordDate - INTERVAL 1 DAY = before_weather.recordDate
WHERE
    after_weather.temperature > before_weather.temperature