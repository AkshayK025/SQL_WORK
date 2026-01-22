-- use tables from db_cross_join
show tables;


-- 🟢 Problem 3 (Real-world Use Case)
-- You want to assign every employee to every shift for testing.
-- Display:
-- employee name
-- shift name
-- assignment_date (use CURDATE())


SELECT e.emp_name, s.shift_name,curdate() as assignment_date FROM employees e
cross join shifts s