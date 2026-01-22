CREATE DATABASE db_left_join;
SHOW DATABASES;
USE db_left_join;
SELECT database();
show tables;

-- This is your left table in most queries.
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    hire_date DATE
);
-- Some employees may not belong to a department.
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
-- Insert into departments
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Sales');
-- Insert into employees
INSERT INTO employees VALUES
(101, 'Alice', 1, '2021-03-15'),
(102, 'Bob', 2, '2020-07-10'),
(103, 'Charlie', 2, '2019-01-20'),
(104, 'David', NULL, '2022-05-01'),
(105, 'Eva', 4, '2023-02-12');
