-- *use db_cte and table employee_performance*\
use db_cte;


-- Problem 6
-- Create a CTE that:
-- Assigns a performance grade using CASE:
-- A → score ≥ 90
-- B → 80–89
-- C → below 80
-- Then:
-- Display count of employees per grade

WITH cte as (
SELECT 
    emp_id as emp_id,
    emp_name as emp_name,
    performance_score as score,
CASE
    WHEN performance_score >= 90 THEN 'A'
    WHEN performance_score BETWEEN 80 and 89 THEN 'B'
    ELSE 'C' END as grade_of_performance
FROM 
    employee_performance)
SELECT 
    count(CASE WHEN grade_of_performance = 'A' THEN 1 END) as A,
    count(CASE WHEN grade_of_performance = 'B' THEN 1 END) as B ,
    count(CASE WHEN grade_of_performance = 'C' THEN 1 END) as C 
FROM
    cte 


-- #answer with method 2
SELECT 
    SUM(CASE WHEN performance_score >= 90 THEN 1 ELSE 0 END) AS Grade_A,
    SUM(CASE WHEN performance_score BETWEEN 80 AND 89 THEN 1 ELSE 0 END) AS Grade_B,
    SUM(CASE WHEN performance_score < 80 THEN 1 ELSE 0 END) AS Grade_C
FROM employee_performance;
