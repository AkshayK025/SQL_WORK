SHOW Databases;
USE project2;

--Table to use
SELECT * FROM employee

-- Problem
-- List employees who joined in the last 3 months
SELECT name
FROM employee
WHERE join_date >= (
    SELECT DATE_SUB(MAX(join_date), INTERVAL 3 MONTH)
    FROM employee
);

