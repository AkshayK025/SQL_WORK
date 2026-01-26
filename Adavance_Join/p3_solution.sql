/*

2. List Customers with No Orders
Tables:

customers(customer_id, name)

orders(order_id, customer_id, order_date)

Problem:
Fetch all customer names who haven’t placed any order.

*/

SELECT * FROM customers;
SELECT * FROM orders;

SELECT 
    c.name , o.order_id
FROM 
    customers c
LEFT JOIN orders o 
on c.customer_id = o.customer_id 
-- and o.order_id is null
WHERE 
    o.order_id is NULL;