CREATE DATABASE hrank;
use hrank;

CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Friends (
    ID INT,
    Friend_ID INT
);

CREATE TABLE Packages (
    ID INT,
    Salary DECIMAL(10,2)
);



-- Students
INSERT INTO Students (ID, Name) VALUES
(1, 'Samantha'),
(2, 'Julia'),
(3, 'Scarlet'),
(4, 'Ashley'),
(5, 'Tom'),
(6, 'Bob'),
(7, 'Mike'),
(8, 'Sarah');

-- Friends (each student's best friend)
INSERT INTO Friends (ID, Friend_ID) VALUES
(1, 5),   -- Samantha's best friend is Tom
(2, 6),   -- Julia's best friend is Bob
(3, 7),   -- Scarlet's best friend is Mike
(4, 8);   -- Ashley's best friend is Sarah

-- Packages (salaries)
INSERT INTO Packages (ID, Salary) VALUES
(1, 11.00),   -- Samantha
(2, 11.10),   -- Julia
(3, 15.00),   -- Scarlet
(4, 15.50),   -- Ashley
(5, 11.55),   -- Tom (Samantha's friend)
(6, 12.12),   -- Bob (Julia's friend)
(7, 15.20),   -- Mike (Scarlet's friend)
(8, 14.50);   -- Sarah (Ashley's friend)


/*
You are given three tables:
Students
ID: Integer, unique student ID
Name: String, student name
Friends
ID: Integer, student ID
Friend_ID: Integer, ID of the student's only best friend
Packages
ID: Integer, student ID
Salary: Decimal, salary offer received by the student (in $ thousands per month)
🎯 Objective
Write an SQL query to find the names of students whose best friends received a higher salary offer than they did.
Output only the names of such students.
Order the result by the salary offered to the best friend, in ascending order.
It is guaranteed that:
Every student has exactly one best friend.
No two students received the same salary.
✅ Example Output
Given the following logic:
Samantha’s friend got $11.55K, she got $11.00K
Julia’s friend got $12.12K, she got $11.10K
Scarlet’s friend got $15.20K, she got $15.00K
Ashley’s friend got $14.50K, she got $15.50K
Expected Output:
Samantha
Julia
Scarlet

*/

-- Solution

SELECT 
    s.Name
FROM 
    Students s
JOIN 
    Friends f ON s.ID = f.ID
JOIN 
    Packages p1 ON s.ID = p1.ID          -- Student's salary
JOIN 
    Packages p2 ON f.Friend_ID = p2.ID   -- Friend's salary
WHERE 
    p2.Salary > p1.Salary
ORDER BY 
    p2.Salary;

