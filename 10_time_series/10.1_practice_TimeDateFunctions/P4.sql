-- logins, sales Tables to perfrom Problem and use db TimeDate
-- Problem 4 Show peak login hours
SHOW DATABASES;
use TimeDate;
show tables;

SELECT * FROM logins;
SELECT * FROM sales;
DESCRIBE logins;
DESCRIBE sales;

-- Solution
SELECT 
    HOUR(login_time) AS login_hour,
    COUNT(*) AS login_count
FROM logins
GROUP BY login_hour
ORDER BY login_count DESC;
