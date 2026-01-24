-- use tables from db_window_aggregate
-- SUM(), AVG(), MIN(), MAX(), COUNT() over windows

SELECT sale_month , sale_amount,
min(sale_amount) over() as min_result,
max(sale_amount) OVER() as max_result
from sales;
