show Databases;
use project2;


-- Problem:
-- Find the top-selling product (by quantity sold) in each category.


-- Tables
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Categories
INSERT INTO categories (category_id, name) VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Clothing');

-- Products
INSERT INTO products (product_id, name, category_id) VALUES
(1, 'Smartphone', 1),
(2, 'Laptop', 1),
(3, 'Novel', 2),
(4, 'Textbook', 2),
(5, 'T-shirt', 3),
(6, 'Jacket', 3);

-- Sales
INSERT INTO sales (sale_id, product_id, quantity, sale_date) VALUES
(1, 1, 10, '2025-06-01'),
(2, 2, 20, '2025-06-02'),
(3, 3, 5,  '2025-06-03'),
(4, 4, 15, '2025-06-04'),
(5, 5, 12, '2025-06-05'),
(6, 6, 8,  '2025-06-06'),
(7, 1, 5,  '2025-06-07'),
(8, 3, 10, '2025-06-08'),
(9, 5, 3,  '2025-06-09');


SELECT * FROM categories;
SELECT *  FROM products;
SELECT * FROM sales;


with cte AS(
    SELECT c.name as c_name, p.name as p_name, s.quantity as s_count FROM sales s
    JOIN products p on s.product_id = p.product_id
    JOIN categories c on p.category_id = c.category_id
),
cte1 as (
    SELECT c_name,p_name, sum(s_count) as t_count FROM cte
    group by 1,2
    ),
cte2 as
(SELECT c_name, p_name,t_count,MAX(t_count) OVER (PARTITION BY c_name) as mx
 from cte1)

SELECT c_name,p_name,t_count FROM cte2
WHERE t_count = mx
 ;