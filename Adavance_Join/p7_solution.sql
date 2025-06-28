-- 7. Department with More Than 1Employees
-- Tables:
-- employees(emp_id, dept_id)
-- departments(dept_id, dept_name)
-- Problem:
-- List departments that have more than one  employees.

SELECT * FROM employees;
SELECT * FROM departments;


SELECT 
    d.dept_name as Department,
   count(e.emp_name)
FROM 
    departments as d
JOIN 
    employees e using(dept_id)
GROUP BY
    d.dept_name




























