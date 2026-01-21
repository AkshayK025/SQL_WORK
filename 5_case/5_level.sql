-- use table weather_reports from db_case

-- Question 10
-- Rules recap:
-- High Risk if:
-- temperature > 40 AND humidity < 30
-- OR rainfall > 100
-- Medium Risk if:
-- temperature BETWEEN 30 AND 40
-- Low Risk otherwise

SELECT
    city,
    temperature,
    rainfall,
    humidity,
    CASE
        WHEN (temperature > 40 AND humidity < 30)
             OR rainfall > 100 THEN 'High Risk'
        WHEN temperature BETWEEN 30 AND 40 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS weather_risk
FROM weather_reports;
