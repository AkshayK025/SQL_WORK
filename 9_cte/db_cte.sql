CREATE DATABASE IF NOT EXISTS db_cte;
SHOW DATABASEs;
USE db_cte;
SELECT DATABASE();
SHOW tables;


-- Table: employee_performance

CREATE TABLE employee_performance (
    emp_id INT,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    performance_score INT,
    project VARCHAR(50),
    work_date DATE
);

INSERT INTO employee_performance VALUES
(1, 'Amit',   'IT',      70000, 85, 'Alpha', '2023-06-01'),
(1, 'Amit',   'IT',      70000, 90, 'Beta',  '2023-06-15'),
(2, 'Neha',   'IT',      75000, 88, 'Alpha', '2023-06-10'),
(3, 'Rahul',  'HR',      50000, 70, 'Hiring','2023-06-05'),
(3, 'Rahul',  'HR',      50000, 75, 'Hiring','2023-06-20'),
(4, 'Pooja',  'Sales',   65000, 92, 'Retail','2023-06-08'),
(5, 'Kiran',  'Sales',   60000, 60, 'Online','2023-06-18'),
(6, 'Sneha',  'Finance', 80000, 95, 'Audit', '2023-06-12'),
(6, 'Sneha',  'Finance', 80000, 90, 'Tax',   '2023-06-22');
