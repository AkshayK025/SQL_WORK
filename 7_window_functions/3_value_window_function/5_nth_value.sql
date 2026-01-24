-- use db_window_value and table monthly_sales.
USE db_window_value;
show tables;


SELECT *,
    NTH_VALUE(sales,2) over(ORDER by month rows BETWEEN UNBOUNDED PRECEDING and UNBOUNDED FOLLOWING)
from monthly_sales;