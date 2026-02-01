-- this data base is created to learn and practice related to mysql store_procedure
CREATE DATABASE IF NOT EXISTS db_sprocedure;

SHOW Databases;
USE db_sprocedure;
SELECT database();
show tables;


CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender ENUM('Male','Female'),
    age INT,
    grade VARCHAR(10),
    marks INT,
    enrollment_date DATE
);


INSERT INTO students 
(first_name, last_name, gender, age, grade, marks, enrollment_date)
VALUES
('John', 'Doe', 'Male', 18, 'A', 85, '2023-06-01'),
('Jane', 'Smith', 'Female', 19, 'A', 92, '2023-06-03'),
('Mike', 'Brown', 'Male', 20, 'B', 75, '2023-06-05'),
('Emily', 'Davis', 'Female', 18, 'A', 88, '2023-06-07'),
('Chris', 'Wilson', 'Male', 21, 'C', 65, '2023-06-10'),
('Sarah', 'Taylor', 'Female', 19, 'B', 78, '2023-06-12'),
('David', 'Anderson', 'Male', 22, 'C', 60, '2023-06-15'),
('Laura', 'Thomas', 'Female', 20, 'A', 90, '2023-06-18');

