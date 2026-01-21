-- use table weather_reports from db_case

-- 8>Show one row with columns:
-- hot_cities
-- rainy_cities
-- high_humidity_cities

SELECT 
    case WHEN temperature > 35 then city end as hot_cities,
    case WHEN humidity > 75 then city end as rainy_cities,
    case WHEN wind_speed > 15 then city end as high_humidity_cities
FROM 
    weather_reports



SELECT
    SUM(CASE WHEN temperature > 35 THEN 1 ELSE 0 END) AS hot_cities,
    SUM(CASE WHEN rainfall > 0 THEN 1 ELSE 0 END) AS rainy_cities,
    SUM(CASE WHEN humidity > 70 THEN 1 ELSE 0 END) AS high_humidity_cities
FROM weather_reports;





-- 9>Count cities where:
-- temperature > 35
-- humidity > 70
-- wind_speed > 15

SELECT
    SUM(CASE WHEN temperature > 35 THEN 1 ELSE 0 END) AS high_temp_cities,
    SUM(CASE WHEN humidity > 70 THEN 1 ELSE 0 END) AS high_humidity_cities,
    SUM(CASE WHEN wind_speed > 15 THEN 1 ELSE 0 END) AS high_wind_cities
FROM weather_reports;
