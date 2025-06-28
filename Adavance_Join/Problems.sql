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


-- Table for problem 3
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
