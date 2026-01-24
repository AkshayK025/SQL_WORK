-- use tables from db_window_aggregate
-- SUM(), AVG(), MIN(), MAX(), COUNT() over windows

-- example 1
SELECT emp_id,sale_amount,
sum(sale_amount) OVER(PARTITION BY emp_id ORDER BY sale_amount) as total_sum FROM sales;

-- example 2

SELECT 
emp_id, sale_month, sale_amount,
sum(sale_amount) 
over
( PARTITION BY sale_month
order by sale_month) as result from sales;

SELECT 
emp_id, sale_month, sale_amount,
sum(sale_amount) 
over
() as result from sales;