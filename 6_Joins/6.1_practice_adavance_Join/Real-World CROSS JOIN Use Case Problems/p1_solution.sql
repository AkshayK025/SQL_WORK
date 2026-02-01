-- Problem 1 solution

SELECT * FROM employees;
SELECT * FROM weekdays;
 


-- solution 1
SELECT e.name,w.day FROM employees e
CROSS JOIN  weekdays  w on e.name <> w.day


-- solution method 2
SELECT * FROM employees CROSS JOIN weekdays;


