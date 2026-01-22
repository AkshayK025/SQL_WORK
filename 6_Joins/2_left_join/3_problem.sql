-- use tables from db_left_join


-- 🟢 Problem 3 (LEFT JOIN with Filtering)
-- List all employees and their department names, but:
-- Only show departments Engineering and Sales
-- Still show employees with no department
-- 👉 This one tests WHERE vs ON clause behavior 👀


show tables;

-- solution method 1
-- Your WHERE clause is filtering on the right table, which is risky with LEFT JOINs.
SELECT 
    e.emp_name,
    d.department_name
FROM 
    employees e 
LEFT JOIN departments d using(department_id)
where 
    d.department_name ='Engineering' 
    or d.department_name = 'sales' 
    or d.department_name is NULL ;


-- solution method 2 best way

SELECT 
    e.emp_name,
    d.department_name
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.department_id
    AND d.department_name IN ('Engineering', 'Sales');
