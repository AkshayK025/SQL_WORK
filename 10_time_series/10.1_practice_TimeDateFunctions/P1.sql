-- logins, sales are Tables to perfrom Problems and use db TimeDate
--Problem1 1.Get all records from the last 7 days

SHOW DATABASES;
use TimeDate;
show tables;

SELECT * FROM logins;
SELECT * FROM sales;
DESCRIBE logins;
DESCRIBE sales;

-- Solution 

SELECT * FROM sales
WHERE sale_time >= DATE_SUB(CURDATE(),INTERVAL 7 DAY)
