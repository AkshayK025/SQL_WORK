-- use db inventory for dataset
USE inventory;
SHOW tables;
/*
"inventory_movements"
"products"
"purchases"
"sales"
*/

-- Problem 1
-- 1.Identify out-of-stock products

SELECT * FROM products;
SELECT * FROM purchases;
SELECT * FROM inventory_movements;
SELECT * FROM sales;


SELECT 
    p.product_id,
    p.product_name,
    COALESCE(pur.total_purchased, 0) AS total_purchased,
    COALESCE(sal.total_sold, 0) AS total_sold
FROM 
    products p
LEFT JOIN (
    SELECT 
        product_id, 
        SUM(quantity) AS total_purchased
    FROM 
        purchases
    GROUP BY 
        product_id
) pur ON p.product_id = pur.product_id
LEFT JOIN (
    SELECT 
        product_id, 
        SUM(quantity) AS total_sold
    FROM 
        sales
    GROUP BY 
        product_id
) sal ON p.product_id = sal.product_id
WHERE 
    COALESCE(pur.total_purchased, 0) <= COALESCE(sal.total_sold, 0);


SELECT product_id, SUM(quantity) AS total_purchased
FROM purchases
GROUP BY product_id;

SELECT product_id, SUM(quantity) AS total_sold
FROM sales
GROUP BY product_id;

INSERT INTO sales (sale_id, product_id, quantity, sale_date)
VALUES (5, 1, 2, '2024-05-20');  -- Laptop A now total_sold = 50







--

SELECT 
    p.product_id,
    p.product_name,
    COALESCE(pur.total_purchased, 0) AS total_purchased,
    COALESCE(sal.total_sold, 0) AS total_sold
FROM 
    products p
LEFT JOIN (
    SELECT 
        product_id, 
        SUM(quantity) AS total_purchased
    FROM 
        purchases
    GROUP BY 
        product_id
) pur ON p.product_id = pur.product_id
LEFT JOIN (
    SELECT 
        product_id, 
        SUM(quantity) AS total_sold
    FROM 
        sales
    GROUP BY 
        product_id
) sal ON p.product_id = sal.product_id
WHERE 
    COALESCE(pur.total_purchased, 0) <= COALESCE(sal.total_sold, 0)
    ;

