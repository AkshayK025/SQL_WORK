-- use db_window_value and table monthly_sales.
USE db_window_value;
show tables;

-- 1️⃣ LAG() — look backward
-- “Give me the previous row’s value”

SELECT *,
    lag(sales) OVER(ORDER BY month ASC) as previous_month_sales     
FROM monthly_sales;     --First row has no previous row → NULL