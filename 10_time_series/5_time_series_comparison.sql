-- time series comparison
use db_time_series;
SELECT database();

-- SELECT DATEDIFF(date1, date2);
-- Returns the difference in days between two dates.
SELECT DATEDIFF('2026-01-31', '2026-01-01'); 
-- (The result is date1 – date2 in days; only the date part is considered, time is ignored.)

-- SELECT TIMEDIFF(time1, time2);
SELECT TIMEDIFF('2026-01-31 14:23:45', '2026-01-31 12:00:00');
-- Returns the difference between two time or datetime values as a time.
-- (The result is time1 – time2, showing hours, minutes, and seconds.)

-- PERIOD_DIFF()
-- 👉 Returns the difference in months between two periods in YYYYMM format.
-- SELECT PERIOD_DIFF(period1, period2);

SELECT PERIOD_DIFF(202601, 202512);
-- (Here, 202601 = January 2026, 202512 = December 2025, so the difference is 1 month.)
