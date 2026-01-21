-- use table pets from database db_logical_operators 

-- Mixed Operators 
-- Show pets that are dogs AND live in Mumbai OR Delhi.
-- Show pets that are black AND (dog OR rabbit).
-- Show pets that do NOT live in Delhi AND age is greater than 3.


SELECT * FROM pets
WHERE species = 'dog' and city in('mumbai','delhi');

SELECT * from pets
where color = 'black' and (species = 'dog' or species = 'rabbit');