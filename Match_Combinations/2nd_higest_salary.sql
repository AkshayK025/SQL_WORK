SHOW Databases;
use project2;


CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT,
    join_date DATE,
    department VARCHAR(50),
    manager_id INT
);


INSERT INTO employee (id, name, salary, join_date, department, manager_id) VALUES
(1, 'Alice',    6000, '2025-06-01', 'HR',        NULL),
(2, 'Ethan',    7500, '2025-04-15', 'Engineering', 1),
(3, 'Oscar',    8000, '2025-02-10', 'Engineering', 2),
(4, 'Uma',      9500, '2025-05-05', 'Marketing',   1),
(5, 'Ivy',      7200, '2025-03-12', 'HR',          1),
(6, 'Bob',      8800, '2025-01-22', 'Engineering', 2),
(7, 'Eve',      6500, '2025-06-10', 'Marketing',   4),
(8, 'Charlie',  7000, '2024-12-30', 'Finance',     NULL),
(9, 'Andy',     8200, '2025-04-01', 'Finance',     8);


-- Retrieve the second highest salary from the employee table.

SELECT max(salary) from employee
WHERE salary < (SELECT max(salary) from employee)
;

SELECT distinct salary from employee
ORDER BY  1 desc
LIMIT 1 OFFSET 1;


SELECT * 
FROM employee 
WHERE name REGEXP '^[AEIOUaeiou].*[AEIOUaeiou]$';
