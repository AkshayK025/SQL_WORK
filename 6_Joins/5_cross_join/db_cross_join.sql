CREATE DATABASE db_cross_join;
SHOW DATABASES;
USE db_cross_join;
SELECT database();
show tables;

-- 🧱 Table 1: employees
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50)
);
INSERT INTO employees VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');


-- 🧱 Table 2: shifts
CREATE TABLE shifts (
    shift_id INT,
    shift_name VARCHAR(20)
);
INSERT INTO shifts VALUES
(1, 'Morning'),
(2, 'Evening');
