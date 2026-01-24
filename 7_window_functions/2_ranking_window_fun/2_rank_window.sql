-- use db_window_rank and table student.
USE db_window_rank;
show tables;

-- 2️⃣ RANK()
-- Assigns a rank based on ordering. Ties get the same rank, but gaps appear after ties.

SELECT *,
    rank() OVER(PARTITION BY class ORDER BY score DESC)
FROM students;

-- In class 10A, Alice & Charlie both scored 95 → rank = 1 for both.
-- Bob scored 85 → rank = 3 (gap because of tie above).