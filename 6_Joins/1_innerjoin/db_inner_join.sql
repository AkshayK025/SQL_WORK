CREATE DATABASE db_inner_join;
SHOW DATABASES;
USE db_inner_join;
SELECT database();
show tables;



CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students (student_id, student_name, age) VALUES
(1, 'Rahul', 10),
(2, 'Anya', 11),
(3, 'Kabir', 10),
(4, 'Meera', 12);

INSERT INTO courses (course_id, student_id, course_name) VALUES
(101, 1, 'Math'),
(102, 2, 'Science'),
(103, 1, 'English'),
(104, 3, 'Math');
