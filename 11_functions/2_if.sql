-- Show employee salary status:
-- If salary ≥ 50,000 → 'High Salary'
-- Else → 'Low Salary'

-- use table employee from db_function

use db_functions;
SELECT database();
show tables;

SELECT name,salary from employees;

SELECT 
    name,
    if(salary >= 50000,'High Salary','low salary') as result
FROM 
    employees;
