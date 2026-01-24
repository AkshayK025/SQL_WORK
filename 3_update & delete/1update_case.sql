show database;
use db_update;
SELECT database();
show tables;


-- Imagine the company gives bonuses based on experience years:
-- 0–2 years → "No Bonus"
-- 3–5 years → "Small Bonus"
-- 6–9 years → "Medium Bonus"
-- 10+ years → "High Bonus"
-- You can update bonus_status using CASE.


update employees
set bonus_status = CASE
                    when experience_years <= 2 then "No Bonus"
                    when experience_years between 3 and 5 then "Small Bonus"
                    when experience_years between 6 and 9 then "Medium Bonus"
                    else "High Bonus"
                    end;

-- Imagine the company gives bonuses based on experience years:
-- 0–2 years → "No Bonus"
-- 3–5 years → "Small Bonus"
-- 6–9 years → "Medium Bonus"
-- 10+ years → "High Bonus"
-- You can update bonus_status using CASE.


update employees
set bonus_status =
case 
WHEN experience_years BETWEEN 0 and 2 THEN "no bonus"
WHEN experience_years BETWEEN 3 and 5 THEN "small bonus"
WHEN experience_years BETWEEN 6 and 9 THEN "medium bonus"
ELSE "High Bonus"
end













