-- use table weather_reports from db_case


-- Level 3 – CASE Pivoting (Counts)
-- 📘 Hint: use SUM(CASE WHEN ... THEN 1 ELSE 0 END)
-- 6> Count how many cities are:
-- Hot
-- Warm
-- Cold



SELECT 
    SUM(CASE WHEN temperature >= 40 then 1 else 0 END) as Hot,
    SUM(CASE WHEN temperature BETWEEN 30 and 35 then 1 else 0 END) as warm,
    SUM(CASE WHEN temperature < 30 then 1 else 0 END) as cold
    
from weather_reports;










--7> Count how many cities have:
-- No Rain
-- Light Rain
-- Heavy Rain

SELECT * FROM weather_reports;

SELECT 
    city,
count(CASE WHEN rainfall = 0 THEN city end) as no_rain,
count(CASE WHEN rainfall <>0 and rainfall <20   THEN city end) as Light_rain,
count(CASE WHEN rainfall >20 THEN city end) as Heavy_rain
 from weather_reports
 GROUP BY city
 ;
