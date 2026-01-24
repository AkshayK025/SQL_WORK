-- use db_window_rank and table student.
USE db_window_rank;
show tables;

-- 3️⃣ DENSE_RANK()
-- Similar to RANK() but no gaps after ties.
-- Assigns a rank based on ordering. Ties get the same rank

SELECT *,
    DENSE_RANK() OVER(PARTITION BY class ORDER BY score DESC) as DENSE_RANK_result
FROM
    students

-- Alice & Charlie → dense_rank = 1
-- Bob → dense_rank = 2 (no gap unlike RANK())