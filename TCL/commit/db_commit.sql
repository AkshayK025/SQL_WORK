CREATE DATABASE if NOT EXISTS db_commit;
show databases;
use db_commit;
SELECT database();
show tables;


CREATE table students(s_id int,s_first_name varchar(50));

SELECT @@autocommit; -- to check auto commit existing status
SHOW VARIABLES LIKE 'autocommit'; -- way 2 to check auto commit existing status

SET autocommit = 0;   -- Turn off auto-save

-- lets check how it work
insert into students VALUES (1,'Akshay');
SELECT * from students; -- only in this session or vs code i can see this output 
-- +------+--------------+
-- | s_id | s_first_name |
-- +------+--------------+
-- |    1 | Akshay       |
-- +------+--------------+

rollback;
SELECT * from students;
--now output showing no data

-- we are now using command commit
insert into students VALUES (1,'Rahul');
commit; -- now we can see output in every session or editor
-- +------+--------------+
-- | s_id | s_first_name |
-- +------+--------------+
-- |    1 | Rahul        |
-- +------+--------------+


rollback; --roll back don't work now we still see inserted data
SELECT * from students;

