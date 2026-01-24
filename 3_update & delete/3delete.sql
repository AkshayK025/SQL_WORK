show database;
use db_update;
SELECT database();
show tables;


-- Scenario: remove product that is out of stock from products table use db_update
-- delete all data from the product table

delete from products
where stock = 0;

TRUNCATE products;

-- Scenario: remove product that is out of stock from products table use db_update
-- delete all data from the product table

SELECT * FROM products
WHERE stock=0;

delete from products
WHERE stock=0;

TRUNCATE TABLE products;