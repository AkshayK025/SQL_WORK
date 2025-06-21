CREATE DATABASE vechicle;
use vechicle;

-- Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Vehicles table
CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY,
    model VARCHAR(100)
);

-- Sales table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    vehicle_id INT,
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);

-- Customers
INSERT INTO customers (customer_id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

-- Vehicles
INSERT INTO vehicles (vehicle_id, model) VALUES
(101, 'Toyota Corolla'),
(102, 'Honda Civic'),
(103, 'Ford Focus');

-- Sales
INSERT INTO sales (sale_id, customer_id, vehicle_id, sale_date) VALUES
(1, 1, 101, '2023-01-15'),
(2, 1, 101, '2023-06-20'), -- Alice buys the same model twice in 2023
(3, 2, 102, '2023-03-05'),
(4, 2, 103, '2024-07-18'),
(5, 3, 101, '2023-04-10'),
(6, 3, 101, '2024-01-12'); -- Charlie buys same model but in different years


/*
 Q1. Find customers who purchased the same vehicle model 
more than once in the same year. 
*/

SHOW tables;
SELECT * FROM customers;
SELECT * FROM sales;
SELECT * FROM vehicles;


SELECT 
    c.name,v.model,YEAR(s.sale_date)
FROM 
    customers c
JOIN sales s USING(customer_id)
JOIN vehicles v USING(vehicle_id)
GROUP BY 
    c.name,s.vehicle_id,v.model,YEAR(s.sale_date)
Having count(*)>1

