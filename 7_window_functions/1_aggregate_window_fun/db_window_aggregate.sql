CREATE DATABASE db_window_aggregate;
use db_window_aggregate;
SELECT DATABASE();
show tables;


-- Table 1: employees
-- Stores information about employees in a company.

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees VALUES
(1, 'John', 'Doe', 'Engineering', 80000, '2020-03-15'),
(2, 'Jane', 'Smith', 'Engineering', 95000, '2019-06-20'),
(3, 'Alice', 'Johnson', 'HR', 60000, '2021-01-10'),
(4, 'Bob', 'Brown', 'HR', 65000, '2018-09-30'),
(5, 'Charlie', 'Davis', 'Sales', 70000, '2020-07-12'),
(6, 'Eva', 'Green', 'Sales', 72000, '2019-12-01'),
(7, 'Frank', 'White', 'Engineering', 88000, '2022-02-25'),
(8, 'Grace', 'Hall', 'Marketing', 68000, '2021-05-15'),
(9, 'Hank', 'Lee', 'Marketing', 71000, '2018-11-20'),
(10, 'Ivy', 'King', 'Sales', 69000, '2022-03-05');



-- Table 2: sales
-- Stores monthly sales made by employees (good for aggregate and ranking functions).
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    emp_id INT,
    sale_month DATE,
    sale_amount DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO sales VALUES
(1, 1, '2023-01-01', 5000),
(2, 2, '2023-01-01', 7000),
(3, 3, '2023-01-01', 3000),
(4, 4, '2023-01-01', 3500),
(5, 5, '2023-01-01', 4000),
(6, 6, '2023-01-01', 4500),
(7, 1, '2023-02-01', 5500),
(8, 2, '2023-02-01', 7200),
(9, 3, '2023-02-01', 3200),
(10, 4, '2023-02-01', 3700),
(11, 5, '2023-02-01', 4100),
(12, 6, '2023-02-01', 4700),
(13, 7, '2023-01-01', 6000),
(14, 8, '2023-01-01', 4000),
(15, 9, '2023-01-01', 4200),
(16, 10, '2023-01-01', 3900);
