-- 10. Find Top 3 Products by Sales
-- Tables:
-- products(product_id, product_name)
-- sales(sale_id, product_id, quantity)
-- Problem:
-- Get top 3 products based on total quantity sold, including their names.


SELECT * FROM products;
SELECT * FROM sales;

SELECT p.product_name,
sum(s.quantity) as sales
from products p
LEFT JOIN sales s using(product_id)
GROUP by 1
ORDER by sales DESC
limit 3