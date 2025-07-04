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


-- Problem 2
/*
Problem 2: Create Pricing Table for All Size-Color Combinations
Scenario:
A product is sold in different sizes and colors. You want to generate a master table of all possible combinations to assign prices later.

Tables:
sizes(size) → ('S', 'M', 'L', 'XL')
colors(color) → ('Red', 'Blue', 'Green')

Task:
Write a query to return every possible combination of size and color.
*/

-- Table 1
CREATE TABLE sizes (
    size VARCHAR(5)
);

INSERT INTO sizes (size) VALUES
('S'),
('M'),
('L'),
('XL');

-- Table 2
CREATE TABLE colors (
    color VARCHAR(20)
);

INSERT INTO colors (color) VALUES
('Red'),
('Blue'),
('Green');


-- Problem 3
/*
Problem 3: Combine Users and Survey Questions
Scenario:
You are building a feedback system. Every user must answer every question in a survey.

Tables:
users(user_id, name)
questions(q_id, question_text)

Task:
Write a query that lists every user paired with every question.
*/

-- Table 1
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO users (user_id, name) VALUES
(1, 'David'),
(2, 'Eva'),
(3, 'Frank');

-- Table 2
CREATE TABLE questions (
    q_id INT PRIMARY KEY,
    question_text VARCHAR(100)
);

INSERT INTO questions (q_id, question_text) VALUES
(1, 'How satisfied are you with our service?'),
(2, 'Would you recommend us?'),
(3, 'How did you hear about us?');
