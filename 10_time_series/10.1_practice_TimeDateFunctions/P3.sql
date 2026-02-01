-- logins, sales Tables to perfrom Problem and use db TimeDate
-- Problem 3 Find the average login duration per day
SHOW DATABASES;
use TimeDate;
show tables;

SELECT * FROM logins;
SELECT * FROM sales;
DESCRIBE logins;
DESCRIBE sales;

-- Solution

SELECT 
    DATE(login_time) AS login_date,
    AVG(TIMESTAMPDIFF(MINUTE, login_time, logout_time)) AS avg_minutes
FROM logins
GROUP BY login_date
ORDER BY login_date;
