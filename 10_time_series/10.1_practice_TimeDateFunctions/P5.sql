-- logins, sales Tables to perfrom Problem and use db TimeDate
-- Problem 5 Count weekend transactions
SHOW DATABASES;
use TimeDate;
show tables;

SELECT * FROM logins;
SELECT * FROM sales;
DESCRIBE logins;
DESCRIBE sales;

-- Solution, Count weekend transactions
SELECT 
    sale_amount, sale_time FROM sales
    WHERE DAYOFWEEK(sale_time) IN (1, 7)


-- solution for count 
SELECT 
    COUNT(*) AS weekend_transaction_count
FROM sales
WHERE DAYOFWEEK(sale_time) IN (1, 7);
