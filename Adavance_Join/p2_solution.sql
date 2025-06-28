-- Get a list of employees along with their manager names (use self join).


SELECT 
    e.emp_name as Emp_Name,
    e1.emp_name as Manager_Name 
FROM 
    employees e 
INNER JOIN employees e1 ON e.manager_id = e1.emp_id