-- use table pets from database db_logical_operators 

-- -- Level 1 – Easy (warm-up)
-- Show all pets that are dogs.
-- Show all pets that live in Delhi.
-- Show all pets whose age is greater than 4.
-- Show all pets whose weight is less than 10 kg.

select * from pets
where species = 'dog';

SELECT * from pets
WHERE city = 'delhi';

SELECT * FROM pets
WHERE age > 4;

SELECT * FROM pets
WHERE weight < 10;

-- -- Level 1 – Easy (warm-up)
-- Show all pets that are dogs.
-- Show all pets that live in Delhi.
-- Show all pets whose age is greater than 4.
-- Show all pets whose weight is less than 10 kg.

SELECT  * FROM pets
where species = 'dog';

SELECT * from pets
WHERE city in ('delhi');

SELECT * from pets
WHERE age > 4;

SELECT * from pets
WHERE weight<10;

