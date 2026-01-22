-- use tables from db_left_join
show tables;

-- 🟢 Problem 4 (LEFT JOIN + COUNT)
-- Count how many employees are in each department.
-- Include departments with zero employees

show tables;

SELECT 
    d.department_name,
    count(e.emp_name)
FROM 
    departments d
LEFT JOIN employees e  using(department_id)
group by d.department_name