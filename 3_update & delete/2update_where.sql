show database;
use db_update;
SELECT database();
show tables;
drop table products,employees;


-- Scenario: Give discounts "10% off" only for products that are in stock and belong to Electronics:

update products
set discount_status = "10% off"
where category = "Electronics" and stock > 0;

-- Scenario: Give discounts "10% off" only for products that are in stock and belong to Electronics:
update products
set discount_status ="10% off"
WHERE stock > 0 and category  ="electronics";