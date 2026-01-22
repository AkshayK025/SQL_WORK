-- use tables from db_cross_join
show tables;


-- 🟢 Problem 2 (Filter AFTER Cross Join)
-- Show combinations only for Morning shift.
-- 👉 Hint: WHERE shift_name = 'Morning'


SELECT e.emp_name, s.shift_name FROM employees e
cross join shifts s
WHERE s.shift_name = 'Morning';