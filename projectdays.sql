use project2;
show tables;



CREATE TABLE Projects (
    Task_ID INT PRIMARY KEY,
    Start_Date DATE,
    End_Date DATE
);

INSERT INTO Projects (Task_ID, Start_Date, End_Date) VALUES
(1, '2025-06-01', '2025-06-02'),
(2, '2025-06-02', '2025-06-03'),
(3, '2025-06-04', '2025-06-05'),
(4, '2025-06-05', '2025-06-06'),
(5, '2025-06-06', '2025-06-07'),
(6, '2025-06-10', '2025-06-11'),
(7, '2025-06-11', '2025-06-12'),
(8, '2025-06-15', '2025-06-16');




WITH ranked_tasks AS (
  SELECT
    Task_ID,
    Start_Date,
    End_Date,
    ROW_NUMBER() OVER (ORDER BY End_Date) AS rn
  FROM Projects
)
-- ,
-- grouped_tasks AS (
  SELECT
    Task_ID,
    Start_Date,
    End_Date,
    DATE_SUB(End_Date, INTERVAL rn DAY) AS grp
  FROM ranked_tasks
-- )
SELECT
  MIN(Start_Date) AS Project_Start_Date,
  MAX(End_Date) AS Project_End_Date,
  DATEDIFF(MAX(End_Date), MIN(Start_Date)) + 1 AS Completion_Days
FROM grouped_tasks
GROUP BY grp
ORDER BY Completion_Days ASC, Project_Start_Date ASC;



