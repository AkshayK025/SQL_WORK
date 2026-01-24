-- use db_window_value and table monthly_sales.
USE db_window_value;
show tables;

-- 3️⃣ FIRST_VALUE() — first value in the window
-- “What was the first value?”


SELECT *,
    FIRST_VALUE(sales) OVER(ORDER BY MONTH) as first_sale_value
FROM                --Always shows January’s sales (100)
    monthly_sales;



SELECT *,
    LAST_VALUE(sales) OVER (ORDER BY month) as error
FROM 
    monthly_sales;   --This gives current row, not the last row.
