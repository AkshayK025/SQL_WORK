CREATE DATABASE IF NOT EXISTS db_update;
show databases;
use db_update;
SELECT database();
show tables;
drop table employees,products;




--- for update_case practice
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    experience_years INT,
    bonus_status VARCHAR(20)
);


INSERT INTO employees (emp_id, name, department, salary, experience_years, bonus_status) VALUES
(1, 'John', 'Sales', 50000, 2, 'Pending'),
(2, 'Mary', 'HR', 60000, 5, 'Pending'),
(3, 'Alex', 'IT', 70000, 8, 'Pending'),
(4, 'Sophia', 'Sales', 55000, 3, 'Pending'),
(5, 'David', 'IT', 80000, 10, 'Pending'),
(6, 'Linda', 'HR', 45000, 1, 'Pending');


--for update_where practice
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    discount_status VARCHAR(20)
);

INSERT INTO products (product_id, product_name, category, price, stock, discount_status) VALUES
(1, 'Laptop', 'Electronics', 1000.00, 5, 'None'),
(2, 'Headphones', 'Electronics', 100.00, 50, 'None'),
(3, 'Coffee', 'Groceries', 10.00, 200, 'None'),
(4, 'Tea', 'Groceries', 8.00, 0, 'None'),
(5, 'Desk Chair', 'Furniture', 150.00, 10, 'None');
