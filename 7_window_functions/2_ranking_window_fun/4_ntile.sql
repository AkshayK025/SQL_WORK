-- use db_window_rank and table student.
USE db_window_rank;
show tables;

-- 4️⃣ NTILE(n)
-- Divides rows into n buckets as evenly as possible.



SELECT *,
    ntile(2) over(order by score desc) as ntile_result_top50,
     ntile(3) over(order by score desc) as ntile_result_top_25
     ,ntile(4) over(order by score desc) as t4
FROM students
