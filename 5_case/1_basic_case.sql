-- use table weather_reports from db_case

-- 1> Display city, temperature and a column called temp_status:
-- Hot if temperature > 35
-- Moderate if temperature between 20 and 35
-- Cold otherwise

SELECT 
    city, temperature, 
    CASE
        when temperature > 35 then 'Hot'
        when temperature BETWEEN 20 and 35 then 'Moderate'
        else 'Cold'
        END as temp_status
FROM weather_reports w


-- 2> Show city and rain_status:
-- Heavy Rain if rainfall > 100
-- Light Rain if rainfall between 1 and 100
-- No Rain if rainfall = 0













-- 3> Create a column humidity_level:
-- High if humidity > 75
-- Medium if humidity between 40 and 75
-- Low otherwise