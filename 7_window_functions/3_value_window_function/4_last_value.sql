-- use db_window_value and table monthly_sales.
USE db_window_value;
show tables;



SELECT
    month,
    sales,
    LAST_VALUE(sales) OVER (
        ORDER BY month
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS last_month_sales
FROM monthly_sales;

-- LAST_VALUE returns the last value of the window frame — and the default frame ends at the current row. so Always use UNBOUNDED PRECEDING and UNBOUNDED FOLLOWING