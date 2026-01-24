-- use db_window_value and table monthly_sales.
USE db_window_value;
show tables;

SELECT *,
    LEAD(sales) OVER(ORDER BY MONTH) as next_month_value
FROM monthly_sales;         --📌 Last row has no next row → NULL
