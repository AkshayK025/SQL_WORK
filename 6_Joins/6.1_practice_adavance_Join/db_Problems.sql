CREATE DATABASE joins;
use joins;
SHOW Tables;

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


-- Table for problem 3,4,5
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'John Doe', 'USA'),
(2, 'Jane Smith', 'Canada'),
(3, 'Akira Yamamoto', 'Japan'),
(4, 'Maria Garcia', 'Mexico');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

INSERT INTO orders VALUES
(101, 1, '2024-01-10'),
(102, 1, '2024-01-20'),
(103, 2, '2024-02-15'),
(104, 3, '2024-03-10');
-- customer_id 4 has no orders


--table for problem 6
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(10, 'HR'),
(20, 'Finance'),
(30, 'Engineering');

-- Reuse employees table with additional columns
ALTER TABLE employees ADD COLUMN salary INT;
ALTER TABLE employees ADD COLUMN dept_id INT;

UPDATE employees SET salary = 60000, dept_id = 10 WHERE emp_id = 1;
UPDATE employees SET salary = 50000, dept_id = 20 WHERE emp_id = 2;
UPDATE employees SET salary = 55000, dept_id = 20 WHERE emp_id = 3;
UPDATE employees SET salary = 75000, dept_id = 30 WHERE emp_id = 4;
UPDATE employees SET salary = 50000, dept_id = 30 WHERE emp_id = 5;

-- table for problem 7

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

INSERT INTO products VALUES
(1, 'Laptop'),
(2, 'Mouse'),
(3, 'Keyboard'),
(4, 'Monitor');

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT
);

INSERT INTO sales VALUES
(1001, 1, 10),
(1002, 2, 50),
(1003, 2, 25),
(1004, 3, 20);
-- product_id 4 (Monitor) has no sales
