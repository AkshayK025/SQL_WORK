-- *use db_cte and table employee_performance*\


-- Multiple CTEs
-- Problem 3
-- Using two CTEs:
-- First CTE → calculate average salary per department
-- Second CTE → list employees with their salary
-- Final query → show employees earning above department average



WITH dept_avg_salary AS (
    SELECT 
        department,
        AVG(salary) AS avg_salary
    FROM employee_performance
    GROUP BY department
),
employee_salary AS (
    SELECT 
        emp_id,
        emp_name,
        department,
        salary
    FROM employee_performance
)
SELECT 
    e.emp_id,
    e.emp_name,
    e.department,
    e.salary,
    d.avg_salary
FROM employee_salary e
JOIN dept_avg_salary d
    ON e.department = d.department
WHERE e.salary > d.avg_salary;
