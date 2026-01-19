show databases;
create database if not exists db_alter;
use db_alter;
SELECT DATABASE();
DROP database db_alter;
SHOW Tables;
DROP table students;


-- Table 1

CREATE TABLE if not exists students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    enrollment_date DATE
);

INSERT INTO students VALUES
(1, 'Aman', 'Sharma', 20, 'Male', '2023-07-10'),
(2, 'Riya', 'Verma', 21, 'Female', '2023-07-12'),
(3, 'Kunal', 'Mehta', 19, 'Male', '2023-07-15');

-- Table 2
CREATE TABLE if not exists enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_status VARCHAR(20),
    constraint fk_student_id 
    Foreign key(student_id) 
    references students(student_id)
);

INSERT INTO enrollments VALUES
(1, 1, 101, 'Active'),
(2, 2, 102, 'Completed'),
(3, 3, 103, 'Active');

