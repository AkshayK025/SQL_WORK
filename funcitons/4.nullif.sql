-- use table employee from db_function

use db_functions;
SELECT database();
show tables;

-- If salary = bonus, return NULL, otherwise return salary

SELECT name,salary,bonus from employees;

SELECT name,nullif(salary,bonus) as null_result_in_both_column from employees;