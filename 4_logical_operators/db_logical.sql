create database db_logical_operators;
show databases;
use db_logical_operators;
select database();
show tables;



CREATE TABLE pets (
    pet_id INT,
    pet_name VARCHAR(50),
    species VARCHAR(30),
    age INT,
    weight INT,
    color VARCHAR(30),
    city VARCHAR(50)
);

INSERT INTO pets VALUES
(1, 'Buddy', 'Dog', 3, 20, 'Brown', 'Delhi'),
(2, 'Milo', 'Cat', 2, 5, 'White', 'Mumbai'),
(3, 'Luna', 'Dog', 5, 25, 'Black', 'Pune'),
(4, 'Oreo', 'Rabbit', 1, 2, 'Black', 'Delhi'),
(5, 'Coco', 'Parrot', 4, 1, 'Green', 'Chennai'),
(6, 'Rocky', 'Dog', 7, 30, 'Brown', 'Mumbai'),
(7, 'Bella', 'Cat', 6, 6, 'Grey', 'Delhi');
