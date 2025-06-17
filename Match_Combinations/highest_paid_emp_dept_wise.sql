SHOW Databases;
USE project2;

-- Problem
-- Find department-wise highest paid employees

--Table to use
SELECT * FROM employee

-- solution
with cte as (
    SELECT 
        department, 
        name, 
        salary,
       rank() OVER (PARTITION BY department ORDER BY salary DESC) AS rnk
    FROM 
        employee
)
SELECT name,salary FROM cte
where rnk=1;

