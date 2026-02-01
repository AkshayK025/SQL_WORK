-- date formatting and conversion
use db_time_series;
SELECT database();


-- Formats a date or datetime into a custom string according to a format you specify.
-- SELECT DATE_FORMAT(date_value, 'format_string');
SELECT DATE_FORMAT('2026-01-31 14:23:45', '%Y-%m-%d %H:%i:%s');


-- TIME_FORMAT()
-- 👉 Formats a time value into a custom string according to a specified format.
-- SELECT TIME_FORMAT(time_value, 'format_string');
SELECT TIME_FORMAT('14:23:45', '%H:%i:%s');

-- STR_TO_DATE()
-- 👉 Converts a string into a date or datetime using a specified format.
-- SELECT STR_TO_DATE(string, 'format_string');
SELECT STR_TO_DATE('31-01-2026', '%d-%m-%Y');
