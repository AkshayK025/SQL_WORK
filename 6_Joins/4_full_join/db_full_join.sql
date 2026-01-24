CREATE DATABASE db_full_join;
DROP database db_full_join;
SHOW DATABASES;
USE db_full_join;
SELECT database();
show tables;

-- Table 1: employees
-- We’ll use a simple employees and projects scenario

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(20)
);

INSERT INTO employees (emp_id, name, dept) VALUES
(1, 'Alice', 'HR'),
(2, 'Bob', 'Finance'),
(3, 'Charlie', 'IT'),
(4, 'David', 'IT'),
(5, 'Eva', 'Finance');

-- Table 2: projects
CREATE TABLE projects (
    proj_id INT PRIMARY KEY,
    emp_id INT NULL,
    project_name VARCHAR(50)
);

INSERT INTO projects (proj_id, emp_id, project_name) VALUES
(101, 1, 'Recruitment System'),
(102, 3, 'Website Redesign'),
(103, 4, 'Network Upgrade'),
(104, NULL, 'Marketing Campaign');  -- no employee assigned

-- ✅ Notice: emp_id can be NULL in projects. This allows simulating a “project with no employee” case for FULL JOIN.

-- How to simulate FULL OUTER JOIN in MySQL
SELECT e.emp_id, e.name, e.dept, p.proj_id, p.project_name
FROM employees e
LEFT JOIN projects p ON e.emp_id = p.emp_id

UNION

SELECT e.emp_id, e.name, e.dept, p.proj_id, p.project_name
FROM employees e
RIGHT JOIN projects p ON e.emp_id = p.emp_id;
-- This combines LEFT JOIN and RIGHT JOIN to mimic FULL JOIN behavior.