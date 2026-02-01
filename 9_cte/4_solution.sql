-- *use db_cte and table employee_performance*\
use db_cte;

-- Problem 4
-- Using a CTE:
-- Calculate maximum performance score per department
-- Show only employees whose score equals the department maximum
-- (Hint: CTE + join back to table)

WITH cte1 AS (
    SELECT department, MAX(performance_score) AS max_score
    FROM employee_performance
    GROUP BY department
),
cte2 AS (
    SELECT emp_id, emp_name, department, performance_score
    FROM employee_performance
)
SELECT e.emp_name, e.department, e.performance_score
FROM cte2 e
JOIN cte1 c 
    ON e.department = c.department
WHERE e.performance_score = c.max_score;
