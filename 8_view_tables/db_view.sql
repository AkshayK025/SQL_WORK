CREATE DATABASE IF NOT EXISTS db_view;
SHOW DATABASEs;
USE db_view;
SELECT DATABASE();
SHOW tables;



-- employee_sales

CREATE TABLE employee_sales (
    sale_id INT PRIMARY KEY,
    employee_id INT,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    sale_amount DECIMAL(10,2),
    sale_date DATE,
    region VARCHAR(50)
);

INSERT INTO employee_sales VALUES
(1, 101, 'Amit',  'Sales', 45000, '2023-06-01', 'North'),
(2, 102, 'Neha',  'Sales', 70000, '2023-06-02', 'South'),
(3, 101, 'Amit',  'Sales', 30000, '2023-06-05', 'North'),
(4, 103, 'Rahul', 'Marketing', 25000, '2023-06-03', 'East'),
(5, 104, 'Pooja', 'Sales', 90000, '2023-06-07', 'West'),
(6, 102, 'Neha',  'Sales', 40000, '2023-06-10', 'South'),
(7, 105, 'Kiran', 'Marketing', 15000, '2023-06-11', 'East'),
(8, 101, 'Amit',  'Sales', 80000, '2023-06-15', 'North');
