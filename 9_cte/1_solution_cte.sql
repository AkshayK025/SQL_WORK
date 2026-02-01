-- *use db_cte and table employee_performance*

-- 🟢 Level 1 — Basics
-- Problem 1
-- Create a CTE that calculates:
-- emp_id
-- emp_name
-- department
-- average performance score per employee
-- Then select all employees whose average score is greater than 85.

WITH cte as(
select 
    emp_id as id,
    emp_name as emp_name,
    department as dept, 
    avg(performance_score) as avg_performance_score
From
    employee_performance
GROUP BY
    1,2,3)
SELECT 
    emp_name,
    avg_performance_score as performance_score
From
    cte
WHERE avg_performance_score>85;