-- rename table students to student and again student to students use db_alter
ALTER TABLE students
rename to student;

ALTER TABLE student
rename to students;

-- rename column first_name to name and again name to first_name from table student db_alter
ALTER TABLE students
change first_name f_name varchar(50);

ALTER TABLE students
change f_name first_name varchar(50);

-- modify column first_name datatype to varchar(100)
ALTER TABLE students
modify column first_name varchar(100);

-- rename table students to student and again student to students use db_alter
-- rename column first_name to f_name and again f_name to first_name from table student db_alter
-- modify column first_name datatype to varchar(100)

ALTER TABLE students
rename to student;

ALTER TABLE student
rename to students;

ALTER TABLE students
change first_namename f_name varchar(50);

ALTER TABLE students
change f_name first_name varchar(30);

ALTER TABLE students
modify column first_name varchar(100);



-- rename table students to student and again student to students use db_alter
-- rename column first_name to f_name and again f_name to first_name from table student db_alter
-- modify column first_name datatype to varchar(100)

ALTER TABLE students
rename to student;

ALTER TABLE student
rename to students;

ALTER TABLE students
change first_name f_name varchar(50) not null;

ALTER TABLE students
change f_name first_name varchar(50) null;

ALTER TABLE students
modify first_name varchar(100);