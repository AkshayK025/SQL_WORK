-- use table employees from db_function

use db_functions;
SELECT database();
show tables;


--Get the first non-null value from salary, bonus, 0

SELECT 
    name, 
    COALESCE(salary,bonus,0) as result 
From 
    employees;