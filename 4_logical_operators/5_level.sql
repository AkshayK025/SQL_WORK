-- use table pets from database db_logical_operators 

-- Show pets that:
-- live in Delhi or Mumbai
-- are NOT cats
-- have age between 2 and 7

SELECT * from pets
WHERE (city = 'delhi' or city = 'mumbai')
and not species = 'cat' and age BETWEEN 2 and 7;

SELECT * 
FROM pets
WHERE (city = 'Delhi' OR city = 'Mumbai')
AND NOT species = 'Cat'
AND age BETWEEN 2 AND 7;
