-- use table pets from database db_logical_operators 

--  – BETWEEN Operator
-- 📘 Technical definition:
-- BETWEEN checks if a value falls within a range (inclusive).
-- Show pets whose age is between 2 and 5.
-- Show pets whose weight is between 5 and 25.
-- Show pets whose age is NOT between 2 and 6.


SELECT * FROM pets
WHERE age BETWEEN 2 and 5;

SELECT * from pets
WHERE age  not between 2 and 6;