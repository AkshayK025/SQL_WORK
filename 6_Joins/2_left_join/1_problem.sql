-- use tables from db_left_join

-- 🟢 Problem 1 (Basic LEFT JOIN)
-- Display:
-- employee name
-- department name
-- 👉 Requirement:
-- Show all employees, even if they don’t belong to any department.

show tables;

SELECT 
    e.emp_name,
    d.department_name
FROM 
    employees e 
LEFT JOIN departments d using(department_id);
