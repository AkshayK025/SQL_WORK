use db_time_series;
SELECT database();

-- Returns the year part from a given date or datetime.
SELECT YEAR(now());

-- Returns the month part (1–12) from a given date or datetime.
SELECT MONTH(now());

-- Returns the day of the month (1–31) from a given date or datetime.
SELECT DAY(now());

-- Returns the hour part (0–23) from a given time or datetime.
SELECT hour(now());

-- Returns the minutes part (0–59) from a given time or datetime.
SELECT MINUTE(now());

-- Returns the seconds part (0–59) from a given time or datetime.
SELECT SECOND(now());


-- Returns the day of the week for a given date as a number 1–7.
-- 1 = Sunday, 2 = Monday, …, 7 = Saturday.
SELECT dayofweek(now()-2);

-- Returns the day number within the year (1–366) for a given date.
SELECT dayofyear(NOW());

-- Returns the week number of the year (0–53) for a given date.
SELECT week(now());