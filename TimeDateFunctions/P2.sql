-- logins, sales Tables to perfrom Problem and use db TimeDate
--Problem1 2.Group sales by month or quarter
SHOW DATABASES;
use TimeDate;
show tables;

SELECT * FROM logins;
SELECT * FROM sales;
DESCRIBE logins;
DESCRIBE sales;

-- Solution 

SELECT 
    YEAR(sale_time) AS sale_year,
    MONTH(sale_time) AS sale_month,
    SUM(sale_amount) AS total_sales
FROM sales
GROUP BY sale_year, sale_month
ORDER BY sale_year, sale_month;

