use db_time_series;
SELECT database();

-- Adds a specific time interval to a date.
-- SELECT DATE_ADD(date_value, INTERVAL number unit);   #syntax
-- (You can add DAY, MONTH, YEAR, HOUR, etc.)

SELECT date_add(now(),interval 2 day);
SELECT date_add(now(),interval 2 month);

-- Subtracts a specific time interval from a date.
SELECT DATE_SUB('2026-01-31', INTERVAL 10 DAY);
-- 2026-01-21 #output   #You can subtract DAY, MONTH, YEAR, HOUR, etc.


-- Adds a specific time interval to a date (similar to DATE_ADD()).
SELECT adddate(now(),interval 1 day); --(You can also use ADDDATE(date, days) to add a number of days directly.)

-- Subtracts a specific time interval from a date (similar to DATE_SUB()).
SELECT SUBDATE(NOW(),INTERVAL 1 DAY);

-- TIMESTAMPDIFF()
-- 👉 Returns the difference between two dates or datetimes in a specified unit (like DAY, MONTH, YEAR, HOUR, etc.).
-- SELECT TIMESTAMPDIFF(unit, datetime1, datetime2);
SELECT TIMESTAMPDIFF(day, curdate(),'2026-01-25'); -- output -6
SELECT TIMESTAMPDIFF(day, '2026-01-25',curdate()); -- output 6

-- Adds a time interval to a date or datetime and returns the new datetime.
-- (Units can be SECOND, MINUTE, HOUR, DAY, MONTH, YEAR, etc.)
-- SELECT TIMESTAMPADD(unit, interval, datetime);
SELECT TIMESTAMPADD(day,10,curdate());





