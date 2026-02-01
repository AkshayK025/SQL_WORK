-- use table employee from db_function

use db_functions;
SELECT database();
show tables;

-- show ename where salary is null and replace it with Salary not  mentioned

SELECT name,salary FROM employees;


-- ifnull
SELECT name,
ifnull(salary,"Salary Not mentioned") 
FROM employees;

