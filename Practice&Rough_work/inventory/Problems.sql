CREATE DATABASE inventory;
use inventory;


--
-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS inventory_db;
USE inventory_db;

-- Step 2: Create tables

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Purchases Table
CREATE TABLE purchases (
    purchase_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    purchase_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sales Table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Inventory Movements (optional for time tracking)
CREATE TABLE inventory_movements (
    movement_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    movement_type ENUM('purchase', 'sale'),
    quantity INT,
    movement_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Step 3: Insert data

-- Products
INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop A', 'Electronics', 1000.00),
(2, 'Phone B', 'Electronics', 600.00),
(3, 'Tablet C', 'Electronics', 400.00),
(4, 'Mouse D', 'Accessories', 30.00),
(5, 'Keyboard E', 'Accessories', 50.00),
(6, 'Monitor F', 'Electronics', 200.00);

-- Purchases
INSERT INTO purchases (purchase_id, product_id, quantity, purchase_date) VALUES
(1, 1, 50, '2024-01-10'),
(2, 2, 100, '2024-02-15'),
(3, 3, 70, '2024-03-01'),
(4, 4, 200, '2024-04-05'),
(5, 5, 150, '2024-04-10'),
(6, 6, 90, '2024-04-20');

-- Sales
INSERT INTO sales (sale_id, product_id, quantity, sale_date) VALUES
(1, 1, 48, '2024-03-15'),
(2, 2, 95, '2024-04-10'),
(3, 3, 30, '2024-04-12'),
(4, 4, 180, '2024-05-01');

-- Inventory Movements (optional)
INSERT INTO inventory_movements (product_id, movement_type, quantity, movement_date) VALUES
(1, 'purchase', 50, '2024-01-10'),
(1, 'sale', 48, '2024-03-15'),
(2, 'purchase', 100, '2024-02-15'),
(2, 'sale', 95, '2024-04-10'),
(3, 'purchase', 70, '2024-03-01'),
(3, 'sale', 30, '2024-04-12'),
(4, 'purchase', 200, '2024-04-05'),
(4, 'sale', 180, '2024-05-01'),
(5, 'purchase', 150, '2024-04-10'),
(6, 'purchase', 90, '2024-04-20');


SHOW tables;
/*
"Tables_in_inventory_db"
"inventory_movements"
"products"
"purchases"
"sales"
*/

/*
Problems
1.Identify out-of-stock products
2.Find items where purchase > sales
3.List top 3 fast-moving products
4.Track inventory level over time
5.Calculate stock aging
*/