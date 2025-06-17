SHOW Databases;
use project2;

-- Problem
-- Count total employees in each department

--Table to use
SELECT * FROM employee

--Solution
SELECT 
    count(*) 
From 
    employee
GROUP BY 
    department;

    