-- use db_window_rank and table student.
USE db_window_rank;
show tables;

-- 1️⃣ ROW_NUMBER()
-- Assigns a unique row number to each row within a partition (no ties).\


SELECT * ,
     ROW_NUMBER() 
     OVER(PARTITION BY class ORDER BY score DESC) as student_rank 
FROM students;

-- Within each class, students are ordered by score descending.
-- Even if two students have the same score, they get different row numbers.