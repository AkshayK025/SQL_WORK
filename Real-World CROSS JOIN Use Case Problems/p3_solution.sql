-- Solution Problem 3
-- Write a query that lists every user paired with every question.

SELECT * FROM users;
SELECT * FROM questions;

SELECT * FROM users
CROSS JOIN questions;