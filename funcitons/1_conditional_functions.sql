CREATE DATABASE IF NOT EXISTS db_functions;
use db_functions;
SELECT DATABASE();
show tables;


-- create table to perform conditional functions
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    bonus INT,
    manager_id INT,
    status VARCHAR(20)
);

INSERT INTO employees VALUES
(1, 'Alice', 'HR', 50000, 5000, 10, 'Active'),
(2, 'Bob', 'IT', 60000, NULL, 11, 'Active'),
(3, 'Charlie', 'IT', NULL, 3000, 11, 'Inactive'),
(4, 'David', 'Finance', 55000, NULL, NULL, 'Active'),
(5, 'Eva', 'HR', 48000, 2000, 10, NULL),
(6, 'Frank', 'Finance', NULL, NULL, NULL, 'Inactive');
