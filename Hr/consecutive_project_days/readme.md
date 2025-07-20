# 🧩 Project Grouping Using SQL

This project solves a SQL problem that involves grouping tasks into projects based on consecutive dates.

---

## 🗂️ Problem Statement

You are given a table `Projects` containing the following columns:

- `Task_ID` (INT)
- `Start_Date` (DATE)
- `End_Date` (DATE)

It is guaranteed that for every row, the difference between `End_Date` and `Start_Date` is exactly **1 day**.

> Tasks are considered part of the **same project** if their `End_Date` and `Start_Date` are **consecutive** (i.e., one ends the same day the next one starts).

---

## 🎯 Objective

Write a query to **find the start and end dates** of each project and **list them** by the number of days it took to complete the project (ascending). If multiple projects have the same duration, order them by their `Start_Date`.

---

## 🗃️ Sample Dataset

```sql
CREATE TABLE Projects (
  Task_ID INT,
  Start_Date DATE,
  End_Date DATE
);

INSERT INTO Projects (Task_ID, Start_Date, End_Date) VALUES
(1, '2023-01-01', '2023-01-02'),
(2, '2023-01-02', '2023-01-03'),
(3, '2023-01-03', '2023-01-04'),
(4, '2023-01-10', '2023-01-11'),
(5, '2023-01-11', '2023-01-12'),
(6, '2023-01-15', '2023-01-16'),
(7, '2023-01-17', '2023-01-18'),
(8, '2023-01-18', '2023-01-19'),
(9, '2023-01-19', '2023-01-20');
```

# Solution
```sql
WITH 
    start_date AS
    (
    SELECT 
      p.Start_Date AS start_date,
      ROW_NUMBER() OVER(ORDER BY p.Start_Date) as srn
    FROM projects p
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
    e.end_date
    
FROM
    start_date s
JOIN
    end_date e on s.srn = e.ern
ORDER BY 
    DATEDIFF(e.end_date,s.start_date) ASC,
    s.start_date ASC;
```