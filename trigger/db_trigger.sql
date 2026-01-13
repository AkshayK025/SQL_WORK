CREATE DATABASE IF NOT EXISTS db_trigger;
use db_trigger;
SELECT database();
show tables;




-- tables are created to practice trigger function

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    score INT
);

CREATE TABLE student_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
