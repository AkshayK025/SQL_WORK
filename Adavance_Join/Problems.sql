CREATE DATABASE joins;
use joins;

-- Problem 1
/*

1. Find Employees Without a Manager
Tables:
employees(emp_id, emp_name, manager_id)
Problem:
Get the names of employees who do not have a manager 
(i.e., manager_id is NULL or doesn't match any emp_id).

2. Self Join to Get Employee & Their Manager Names
Tables:
employees(emp_id, emp_name, manager_id)
Problem:
Get a list of employees along with their manager names (use self join).

*/



-- Table for problem 1 & 2

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT
);

INSERT INTO employees VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'David', 2),
(5, 'Eve', NULL);


