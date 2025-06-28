-- 8. Latest Order per Customer
-- Tables:

-- orders(order_id, customer_id, order_date)

-- Problem:
-- Fetch the most recent order for every customer.


SELECT * FROM customers;
SELECT * FROM orders;

SELECT 
    c.name as Customer_Name,
    max(o.order_date) as Latest_Order_Date
FROM customers c 
JOIN orders o using(customer_id)
GROUP BY 
    c.name;