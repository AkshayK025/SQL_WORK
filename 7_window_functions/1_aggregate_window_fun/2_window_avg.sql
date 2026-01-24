-- use tables from db_window_aggregate
-- SUM(), AVG(), MIN(), MAX(), COUNT() over windows

SELECT sale_month , sale_amount,
avg(sale_amount) over(PARTITION BY sale_month ORDER BY sale_amount) as avg_result
from sales;

SELECT sale_month , sale_amount,
avg(sale_amount) over(ORDER BY sale_amount) as avg_result
from sales;

SELECT sale_month , sale_amount,
avg(sale_amount) over() as avg_result
from sales;