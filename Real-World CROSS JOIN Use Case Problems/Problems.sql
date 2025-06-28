CREATE DATABASE crossjoin;
USE crossjoin;

-- Problem 1
/*
Problem 1: Generate Employee Weekly Work Schedule
Scenario:
You have a list of employees and a list of weekdays. You need to assign every employee to every weekday for scheduling.
Tables:
employees(id, name)
weekdays(day) → contains values like ('Monday', 'Tuesday', ..., 'Friday')
Task:
Write a query to generate a schedule table that assigns every employee to each day of the week.
*/

-- Table 1 
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO employees (id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');


-- Table 2
CREATE TABLE weekdays (
    day VARCHAR(20)
);

INSERT INTO weekdays (day) VALUES
('Monday'),
('Tuesday'),
('Wednesday'),
('Thursday'),
('Friday');
