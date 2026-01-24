CREATE database db_window_rank;
use db_window_rank;
SELECT database();
show tables;



CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    class VARCHAR(10),
    score INT
);

INSERT INTO students VALUES
(1, 'Alice', '10A', 95),
(2, 'Bob', '10A', 85),
(3, 'Charlie', '10A', 95),
(4, 'David', '10B', 70),
(5, 'Eva', '10B', 90),
(6, 'Frank', '10B', 70),
(7, 'Grace', '10B', 85),
(8, 'Hank', '10C', 80),
(9, 'Ivy', '10C', 75),
(10, 'Jack', '10C', 80);
