
-- 5. Products Never Sold
-- Tables:

-- products(product_id, product_name)

-- sales(sale_id, product_id, quantity)

-- Problem:
-- List all products that were never sold.

SELECT * FROM products;
SELECT * FROM sales;

SELECT p.product_name
from products p
LEFT JOIN sales s using(product_id)
where s.sale_id is null