-- use table weather_reports from db_case

-- Level 2 – CASE with logical operators

-- 4>Create a column weather_alert:
-- Alert if temperature > 40 OR rainfall > 100
-- Normal otherwise

SELECT 
    city,
    CASE
        WHEN temperature > 40 or rainfall > 100 THEN "Alert"
        ELSE 'Normal'
        END as weather_alert
FROM 
    weather_reports;








-- 5>Create wind_condition:
-- Windy if wind_speed > 20 AND humidity > 70
-- Calm otherwise