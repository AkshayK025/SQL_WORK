-- Get a list of employees along with their manager names (use self join).


SELECT 
    e.emp_name as Emp_Name,
    e1.emp_name as Manager_Name 
FROM 
    employees e 
INNER JOIN employees e1 ON e.manager_id = e1.emp_id

----------------------------------------

-- Get a list of employees along with their manager names (use self join).
SHOW databases;
use joins;
SHOW Tables;

SELECT * FROM employees;

SELECT 
    e.emp_name as emp_name,
    e1.emp_name as mang_name
FROM
    employees e
INNER JOIN employees e1
on e.manager_id = e1.emp_id


    -- Get a list of employees along with their manager names (use self join).

