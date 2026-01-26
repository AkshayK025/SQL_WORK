-- use tables from the db_inner_join

-- Question 1 (Easy)
-- Show the student name and course name for students who are enrolled in courses.
-- 💡 Hint:
-- Use INNER JOIN
-- Match students.student_id with courses.student_id

SELECT 
    s.student_id, 
    s.student_name,
    c.course_name 
from 
    students s
INNER JOIN courses c
on s.student_id = c.student_id;  


-- Show only students enrolled in Math.

SELECT
    s.student_name,
    c.course_name
FROM
    students s
JOIN courses c using(student_id)
where course_name = 'Math';


-- method 2
SELECT
    s.student_name,
    c.course_name
FROM
    students s
JOIN courses c on s.student_id = c.student_id and c.course_name = 'Math';



-- How many courses is Rahul enrolled in
SELECT 
    s.student_name, 
    count(c.course_name)
from students s
JOIN courses c using(student_id)
where s.student_name = 'Rahul'
group by
    s.student_name;


