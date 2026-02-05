use db_self_join_practice;
SELECT database()
-- use Table student

-- Practice Problems (SELF JOIN)

/*
1️⃣ Students Sitting on Same Bench
👉 Find students sitting on the same bench.
*/

SELECT
    s.student_name
    ,s1.student_name
    ,s.bench_no
FROM
    student s
INNER JOIN
    student s1 ON s.bench_no = s1.bench_no
    and s.student_id < s1.student_id;
