show database;
use db_update;
SELECT database();
show tables;


-- Scenario: remove product that is out of stock from products table use db_update

delete from products
where stock = 0;

-- delete all data from the product table

TRUNCATE products;