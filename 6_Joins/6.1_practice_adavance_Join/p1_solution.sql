-- Problem 1 solution

-- Get the names of employees who do not have a manager 
-- (i.e., manager_id is NULL or doesn't match any emp_id)

SHOW databases;
use joins;
SHOW Tables;

SELECT * FROM employees;



SELECT 
    e.emp_name as Emp_Name,
    e1.emp_name as Manager_Name 
FROM 
    employees e 
LEFT JOIN employees e1 ON e.manager_id = e1.emp_id
WHERE 
    e1.emp_name is NULL




--problem 1
use joins;
SELECT database();
SHOW tables;
describe employees;
-- Problem:
-- Get the names of employees who do not have a manager 

SELECT 
    emp_name,
    manager_id
FROM
     employees
WHERE manager_id is null;