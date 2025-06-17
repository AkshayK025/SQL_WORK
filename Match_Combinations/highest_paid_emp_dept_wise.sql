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

--solution 2 using subquery
SELECT department, name, salary
FROM (
    SELECT *,
           RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rnk
    FROM employee
) AS ranked
WHERE rnk = 1;


--solution 3 using group by and max()
SELECT 
    e.department, 
    e.name, 
    e.salary
FROM 
    employee e
JOIN (
    SELECT 
        department, 
        MAX(salary) AS max_salary
    FROM 
        employee
    GROUP BY 
        department
    ) m 
ON e.department = m.department AND e.salary = m.max_salary;
