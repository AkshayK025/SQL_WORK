-- use tables from db_cross_join
show tables;


-- 🟢 Problem 1 (Basic)
-- List all possible employee–shift combinations.

SELECT e.emp_name, s.shift_name FROM employees e
cross join shifts s
