-- 3. Get Highest Salary in Each Department
-- Tables:

-- employees(emp_id, name, salary, dept_id)

-- departments(dept_id, dept_name)

-- Problem:
-- List the name of each department and the employee with the highest salary in it.


SELECT * FROM employees;
SELECT * FROM departments;

WITH cte AS 
(
    SELECT 
    d.dept_name as Department,
    e.emp_name as Employee_Name, 
    e.salary as Employee_Salary,
    ROW_NUMBER() OVER(PARTITION BY d.dept_id ORDER BY e.salary DESC) as rn  
FROM 
    departments as d
JOIN 
    employees e using(dept_id)
)
SELECT
     Department,
     Employee_Name,
     Employee_Salary
FROM
    cte 
WHERE 
    rn = 1;


-- 7. Department with More Than 1Employees
-- Tables:
-- employees(emp_id, dept_id)
-- departments(dept_id, dept_name)
-- Problem:
-- List departments that have more than one  employees.



SELECT 
    d.dept_name as Department,
   count(e.emp_name)
FROM 
    departments as d
JOIN 
    employees e using(dept_id)
GROUP BY
    d.dept_name