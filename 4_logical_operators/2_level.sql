-- use table pets from database db_logical_operators 

-- Level 2 – Logical Operators (AND / OR)
-- Show pets that are dogs AND brown in color.
-- Show pets that are cats OR rabbits.
-- Show pets that live in Delhi AND are black in color.
-- Show pets that are older than 3 years or weigh more than 5 kg.


SELECT * FROM pets
WHERE species = 'dog' and color = 'brown';

SELECT * from pets
WHERE species in ('cat','rabbit');

SELECT * FROM pets
WHERE age > 3 or weight > 5;