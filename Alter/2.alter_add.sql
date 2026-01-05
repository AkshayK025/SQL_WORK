-- Add primary key to the table students and column name student_id  use db_alter
DESCRIBE students;
ALTER TABLE students
Add primary key pk_student_id (student_id);

-- add foreign key to the table enrollments and column name student_id use db_alter
ALTER TABLE enrollments
add constraint fk_student_id foreign key (student_id) references students(student_id);

-- add index to the table enrollments on column course_id use db_alter
ALTER table enrollments
add index ix_course_id (course_id);

-- add column to the students table after name column
ALTER TABLE students
add column middle_name VARCHAR(50) after first_name;