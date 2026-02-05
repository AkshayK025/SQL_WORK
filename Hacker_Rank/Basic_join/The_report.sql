-- #Method 1

SELECT 
    if(g.grade >= 8, s.name, null) as name,
    g.grade as grade,
    s.marks as marks
From students s
    JOIN grades g on s.marks between g.min_mark and g.max_mark
ORDER by 
    grade desc,
    name ASC;


-- Method 2

with cte as (
SELECT 
    s.name as s_name,
    case 
    when s.marks between 0 and 9 then 1
    when s.marks between 10 and 19 then 2
    when s.marks between 20 and 29 then 3
    when s.marks between 30 and 39 then 4
    when s.marks between 40 and 49 then 5
    when s.marks between 50 and 59 then 6
    when s.marks between 60 and 69 then 7
    when s.marks between 70 and 79 then 8
    when s.marks between 80 and 89 then 9
    when s.marks between 90 and 100 then 10
    end as grade,
    s.Marks as marks
    
From students s)
SELECT 
    case
    when grade < 8 then null
    else s_name end as name,
    grade,
    marks
From cte
order by 
    grade desc,name ASC;