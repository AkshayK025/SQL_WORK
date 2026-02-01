/*
6. Country with Maximum Orders
Tables:

orders(order_id, customer_id)

customers(customer_id, country)

Problem:
Find the country that placed the maximum number of orders using joins and GROUP BY.
*/

SELECT * FROM customers;
SELECT * FROM orders;


SELECT
     c.country as County_Name,
     count(o.order_id) as Order_count 
FROM 
    customers c
JOIN 
    orders o USING(customer_id)
GROUP BY 
    c.country
ORDER BY 
    order_count DESC
LIMIT 
    1 ;