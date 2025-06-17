CREATE DATABASE sales
use sales
SHOW tables;

-- 1. customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    created_at DATE
);

INSERT INTO customers VALUES
(1, 'Alice', '2024-10-10'),
(2, 'Bob', '2025-01-15'),
(3, 'Charlie', '2025-02-20'),
(4, 'David', '2025-03-10'),
(5, 'Eva', '2025-04-05');

-- 📦 2. products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 1200.00),
(102, 'Mouse', 'Electronics', 25.00),
(103, 'Desk Chair', 'Furniture', 150.00),
(104, 'Notebook', 'Stationery', 5.00),
(105, 'Pen Set', 'Stationery', 10.00);

-- 🧾 3. orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(201, 1, '2025-03-01'),
(202, 2, '2025-04-05'),
(203, 2, '2025-05-10'),
(204, 3, '2025-05-20'),
(205, 4, '2025-06-01'),
(206, 5, '2025-06-10');

-- 📦 4. order_items
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(301, 201, 101, 1, 1200.00),   -- Alice buys Laptop
(302, 202, 102, 2, 25.00),     -- Bob buys 2 Mice
(303, 202, 105, 1, 10.00),     -- Bob buys Pen Set
(304, 203, 103, 1, 150.00),    -- Bob buys Desk Chair
(305, 204, 104, 10, 5.00),     -- Charlie buys Notebooks
(306, 205, 105, 3, 10.00),     -- David buys 3 Pen Sets
(307, 206, 104, 5, 5.00);      -- Eva buys 5 Notebooks


-- Problems
/*
1.Top 5 customers by total value
2.Unsold products in last 30 days
3.Monthly revenue for last 6 months
4.Repeat vs. new customers
5.Orders with total > avg order value
*/