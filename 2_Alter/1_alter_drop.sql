use db_alter;

-- drop first_name column from the students table use db_alter
ALTER TABLE students
drop column first_name;

-- drop foreign key from the table enrollments use db_alter
SHOW CREATE TABLE enrollments;      -- to view foreign key name 
ALTER TABLE enrollments
drop foreign key fk_student_id;

-- Drop index from the table enrollments use db_alter
SHOW INDEX FROM enrollments;        -- to view index name 
ALTER TABLE enrollments
DROP INDEX fk_student_id;

-- Drop primary key from the table students use db_alter
ALTER TABLE students
drop primary key;



-- drop first_name column from the students table use db_alter
-- drop foreign key from the table enrollments use db_alter
-- Drop index from the table enrollments use db_alter
-- Drop primary key from the table students use db_alter

use db_alter;
SELECT database();
show Tables;
ALTER table students
drop column first_name;

show create table enrollments;
ALTER table enrollments
Drop constraint fk_student_id;  -- Drop foreign key fk_student_id;

ALTER table enrollments
drop index fk_student_id;

ALTER table students
drop primary key;

-- drop first_name column from the students table use db_alter
-- drop foreign key from the table enrollments use db_alter
-- Drop index from the table enrollments use db_alter
-- Drop primary key from the table students use db_alter

use db_alter;
SELECT database();
show tables;

ALTER table students
drop column first_name;

ALTER table enrollments
drop foreign key fk_student_id;

ALTER table enrollments
drop index fk_student_id;

ALTER table students
drop primary key;


-- drop first_name column from the students table use db_alter
-- drop foreign key from the table enrollments use db_alter
-- Drop index from the table enrollments use db_alter
-- Drop primary key from the table students use db_alter


alter table students
drop first_name;

alter table enrollments
drop foreign key fk_student_id,
drop index fk_student_id;

alter table students
drop primary key;

-- drop first_name column from the students table use db_alter
-- drop foreign key from the table enrollments use db_alter
-- Drop index from the table enrollments use db_alter
-- Drop primary key from the table students use db_alter

alter table students
drop first_name;

alter table enrollments
drop foreign key fk_student_id;

alter table enrollments
drop index fk_student_id;

alter table students
drop primary key;

-- drop first_name column from the students table use db_alter
-- drop foreign key from the table enrollments use db_alter
-- Drop index from the table enrollments use db_alter
-- Drop primary key from the table students use db_alter

use db_alter;
SELECT database();

alter table students
drop column first_name;

alter table enrollments
drop foreign key fk_student_id,
drop index ix_course_id;

drop index fk_student_id on enrollments;

alter table students
drop primary key;