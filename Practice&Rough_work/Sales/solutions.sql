CREATE DATABASE sales
USE sales

SHOW tables;            --"customers", "order_items","orders","products"

-- Problem1
--1 Find top 5 customers by total purchase value

SELECT * FROM customers;
SELECT * FROM order_items;
SELECT * FROM orders;
SELECT * FROM products;


-- Solution

SELECT 
    c.customer_id AS Customer_ID,
    c.name AS Name, 
    SUM(oi.quantity * oi.price) AS Total_Purchase_Value
FROM 
    customers c
JOIN orders od USING(customer_id)
JOIN order_items oi USING(order_id)
GROUP BY 
    c.customer_id, c.name
ORDER BY 
    Total_Purchase_Value DESC
LIMIT 5;


-- 2.Unsold products in last 30 days

--soltion 1 using not in and subquery
SELECT 
    p.name
FROM 
    products p
WHERE p.product_id NOT IN (
    SELECT 
        DISTINCT oi.product_id
    FROM 
        order_items oi
    JOIN
         orders o USING(order_id)
    WHERE 
        o.order_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
);


-- solution 2 using left join
SELECT 
    p.product_id, 
    p.name
FROM 
    products p
LEFT JOIN (
    SELECT 
        DISTINCT oi.product_id
    FROM 
        order_items oi
    JOIN 
        orders o ON oi.order_id = o.order_id
    WHERE 
        o.order_date >= CURDATE() - INTERVAL 30 DAY
) recent_sales
ON 
    p.product_id = recent_sales.product_id
WHERE 
    recent_sales.product_id IS NULL;


-- 3 Get monthly revenue trend for the last 6 months.


--
select 
    month(o.order_date),
    SUM(oi.quantity*oi.price) as revenue 
FROM 
    order_items oi
join 
    Orders o using(order_id)
GROUP BY 1


--
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS month,
    SUM(oi.quantity * oi.price) AS revenue
FROM 
    order_items oi
JOIN orders o USING(order_id)
WHERE 
    o.order_date >= CURDATE() - INTERVAL 6 MONTH
GROUP BY 
    month
ORDER BY 
    month;


--
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS month,
    SUM(oi.quantity * oi.price) AS revenue,
    LAG(SUM(oi.quantity * oi.price)) 
        OVER (ORDER BY DATE_FORMAT(o.order_date, '%Y-%m')) AS prev_revenue,
    (SUM(oi.quantity * oi.price) - 
     LAG(SUM(oi.quantity * oi.price)) 
        OVER (ORDER BY DATE_FORMAT(o.order_date, '%Y-%m'))) AS revenue_diff,
     
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
WHERE 
    o.order_date >= CURDATE() - INTERVAL 6 MONTH
GROUP BY 
    month
ORDER BY 
    month;


--
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS month,
    SUM(oi.quantity * oi.price) AS revenue,
    LAG(SUM(oi.quantity * oi.price)) 
        OVER (ORDER BY DATE_FORMAT(o.order_date, '%Y-%m')) AS prev_revenue
     
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
WHERE 
    o.order_date >= CURDATE() - INTERVAL 6 MONTH
GROUP BY 
    month
ORDER BY 
    month;


--Problem4
-- Identify repeat vs. new customers


-- solution1
SELECT
     count(oi.order_id)    
FROM 
    order_items oi
JOIN
     orders o using(order_id)
GROUP BY 
    o.customer_id


-- solution2 with case statement
SELECT
    c.customer_id,
    c.name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    CASE 
        WHEN COUNT(DISTINCT o.order_id) = 1 THEN 'New'
        WHEN COUNT(DISTINCT o.order_id) > 1 THEN 'Repeat'
    END AS customer_type
FROM 
    customers c
LEFT JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.name;


--Problem5
-- Find orders where total value > average order value

select order_id, SUM(price*quantity) FROM order_items
GROUP BY order_id
having sum(price * quantity) > (select avg(price*quantity) FROM order_items)



-- Solution
SELECT 
    order_id,
    SUM(price * quantity) AS order_total
FROM order_items
GROUP BY order_id
HAVING SUM(price * quantity) > (
    SELECT AVG(order_total)
    FROM (
        SELECT 
            order_id,
            SUM(price * quantity) AS order_total
        FROM order_items
        GROUP BY order_id
    ) AS order_totals
);


-- Show % above average per order
SELECT 
    order_id,
    order_total,
    ROUND(order_total - avg_order_total, 2) AS diff_from_avg,
    ROUND((order_total - avg_order_total) / avg_order_total * 100, 2) AS percent_above_avg
FROM (
    SELECT 
        order_id,
        SUM(price * quantity) AS order_total,
        (SELECT 
             AVG(order_sum) 
         FROM (
             SELECT 
                 order_id, 
                 SUM(price * quantity) AS order_sum
             FROM 
                 order_items
             GROUP BY 
                 order_id
         ) AS avg_table
        ) AS avg_order_total
    FROM 
        order_items
    GROUP BY 
        order_id
) AS result;

