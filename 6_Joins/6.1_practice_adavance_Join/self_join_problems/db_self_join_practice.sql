CREATE DATABASE db_self_join_practice;
use  db_self_join_practice;
SELECT DATABASE();

-- 🗄️ 1️⃣ Employee Table (Managers, Salary, Department, Join Date)
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT,
    salary INT,
    department_id INT,
    join_date DATE
);
INSERT INTO Employee VALUES
(1, 'Alice', NULL, 90000, 10, '2018-01-10'),
(2, 'Bob', 1, 60000, 10, '2019-03-15'),
(3, 'Charlie', 1, 60000, 10, '2020-07-01'),
(4, 'David', 2, 50000, 20, '2021-02-20'),
(5, 'Eva', 2, 70000, 20, '2022-05-18'),
(6, 'Frank', 3, 50000, 20, '2023-01-01');

-- 🎓 2️⃣ Student Table (Same Bench)
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    bench_no INT
);
INSERT INTO Student VALUES
(1, 'Tom', 1),
(2, 'Jerry', 1),
(3, 'Mickey', 2),
(4, 'Donald', 2),
(5, 'Daisy', 3);

-- 👨‍👩‍👧 3️⃣ Person Table (Family & City)
CREATE TABLE Person (
    person_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    family_id INT,
    city VARCHAR(50)
);
INSERT INTO Person VALUES
(1, 'John', 40, 100, 'New York'),
(2, 'Emma', 35, 100, 'New York'),
(3, 'Liam', 15, 100, 'New York'),
(4, 'Olivia', 30, 200, 'London'),
(5, 'Noah', 25, 200, 'London'),
(6, 'Ava', 20, 300, 'Paris');

-- 🛒 4️⃣ Product Table (Price Comparison)
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);
INSERT INTO Product VALUES
(1, 'Pen', 10),
(2, 'Notebook', 50),
(3, 'Bag', 500),
(4, 'Pencil', 10),
(5, 'Shoes', 800);

-- 👤 5️⃣ Users Table (Duplicate Emails)
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100)
);
INSERT INTO Users VALUES
(1, 'user1', 'a@gmail.com'),
(2, 'user2', 'b@gmail.com'),
(3, 'user3', 'a@gmail.com'),
(4, 'user4', 'c@gmail.com'),
(5, 'user5', 'b@gmail.com');

-- 📜 6️⃣ Logs Table (Consecutive IDs)
CREATE TABLE Logs (
    log_id INT PRIMARY KEY
);
INSERT INTO Logs VALUES
(1),
(2),
(3),
(5),
(6),
(8);
