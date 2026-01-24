-- use tables from db_window_aggregate
-- SUM(), AVG(), MIN(), MAX(), COUNT() over windows

SELECT sale_month , sale_amount,
count(sale_amount) over() as count_result
-- max(sale_amount) OVER() as max_result
from sales;