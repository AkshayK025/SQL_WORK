-- now

-- Returns the current date and time from the MySQL server (format: YYYY-MM-DD HH:MM:SS).
SELECT now();

-- Returns the current date only (format: YYYY-MM-DD).
SELECT curdate();

-- Returns the current date and time, same as NOW()
SELECT CURRENT_TIMESTAMP();

-- Returns the current date and time at the exact moment the function is executed.
-- (Unlike NOW(), it changes during a query if the time changes.)
SELECT sysdate();