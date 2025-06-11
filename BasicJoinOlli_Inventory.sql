use project2;

--Hacker Rank Problem

with cte as (
SELECT 
    w.id,
    wp.age,
    w.coins_needed,
    w.power,
    Row_Number()OVER(PARTITION BY wp.age,w.power ORDER BY w.coins_needed ASC)     as rk 
FROM Wands AS w
JOIN Wands_Property wp ON w.code = wp.code
WHERE is_evil = 0 
)
select id,age,coins_needed,power from cte
where rk = 1
Order by power desc,age desc
;




-- without use of cte for old mysql versions

SELECT 
    w.id,
    wp.age,
    w.coins_needed,
    w.power
FROM Wands AS w
JOIN Wands_Property AS wp ON w.code = wp.code
WHERE wp.is_evil = 0
  AND w.coins_needed = (
      SELECT MIN(w2.coins_needed)
      FROM Wands AS w2
      JOIN Wands_Property AS wp2 ON w2.code = wp2.code
      WHERE wp2.is_evil = 0
        AND wp2.age = wp.age
        AND w2.power = w.power
  )
ORDER BY w.power DESC, wp.age DESC;
