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

SELECT * from Projects;


-- Solution

WITH 
    start_date AS
    (
    SELECT 
      p.Start_Date AS start_date,
      ROW_NUMBER() OVER(ORDER BY p.Start_Date) as srn
    from projects p
    LEFT JOIN projects q on p.Start_Date = q.End_Date
    WHERE q.End_Date is NULL
    ),
  end_date AS 
    (
    SELECT 
      p.End_Date AS end_date,
      ROW_NUMBER() OVER(ORDER BY p.End_Date) as ern
    FROM
      projects p
    LEFT JOIN Projects q on p.End_Date = q.Start_Date
    WHERE q.Start_Date IS NULL
    )
SELECT
    s.start_date,
    e.end_date,
    DATEDIFF(e.end_date,s.start_date)  AS Duration
FROM
    start_date s
JOIN
    end_date e on s.srn = e.ern
ORDER BY 
    Duration ASC,
    s.start_date ASC
  







