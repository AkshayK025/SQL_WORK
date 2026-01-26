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


-- Add primary key to the table students and column name student_id  use db_alter
-- add foreign key to the table enrollments and column name student_id use db_alter
-- add index to the table enrollments on column course_id use db_alter
-- add column middle name to the students table after name column


ALTER TABLE students
add constraint pk_student_id primary key(student_id);

ALTER TABLE enrollments
add constraint fk_student_id foreign key(student_id) references students(student_id);

ALTER TABLE enrollments
add index (course_id);

ALTER TABLE students
add column first_namename VARCHAR(50) after student_id



-- Add primary key to the table students and column name student_id  use db_alter
-- add foreign key to the table enrollments and column name student_id use db_alter
-- add index to the table enrollments on column course_id use db_alter
-- add column first_name to the students table after name column

ALTER table students
add constraint pk_student_id primary key(student_id),
add column first_name VARCHAR(50) not null;


ALTER TABLE enrollments
add constraint fk_student_id foreign key(student_id)
references students(student_id)
on delete cascade
on update cascade,
add index ix_course_id (course_id);



-- Add primary key to the table students and column name student_id  use db_alter
-- add foreign key to the table enrollments and column name student_id use db_alter
-- add index to the table enrollments on column course_id use db_alter
-- add column first_name to the students table after student_id column

ALTER TABLE students
add constraint primary key(student_id);

ALTER TABLE enrollments
add constraint fk_student_id foreign key(student_id) references students(student_id);

ALTER TABLE enrollments
add index ix_course_id (course_id);

ALTER TABLE students
add column
    first_name varchar(50) not null after student_id
;


-- Add primary key to the table students and column name student_id  use db_alter
-- add foreign key to the table enrollments and column name student_id use db_alter
-- add index to the table enrollments on column course_id use db_alter
-- add column first_name to the students table after student_id column

ALTER TABLE students
add primary key (student_id);

ALTER TABLE enrollments
add constraint fk_student_id foreign key(student_id) references students(student_id)
on delete cascade
on update cascade;

ALTER TABLE enrollments
add index ix_course_id (course_id);

ALTER TABLE students
add column first_name varchar(50) not null after student_id;



-- Add primary key to the table students and column name student_id  use db_alter
-- add column first_name to the students table after student_id column
-- add foreign key to the table enrollments and column name student_id use db_alter
-- add index to the table enrollments on column course_id use db_alter


ALTER TABLE students
add primary key (student_id),
add column first_name varchar(50) not null after student_id;

ALTER TABLE enrollments
add constraint fk_student_id foreign key(student_id) references students(student_id)
on delete cascade on update cascade,
add index ix_course_id (course_id);


-- Add primary key to the table students and column name student_id  use db_alter
-- add column first_name to the students table after student_id column
-- add foreign key to the table enrollments and column name student_id use db_alter
-- add index to the table enrollments on column course_id use db_alter

ALTER TABLE students
add primary key(student_id),
add column first_name varchar(100) not null after student_id;

ALTER TABLE enrollments
add constraint fk_student_id foreign key(student_id) references students(student_id)
on delete cascade on update cascade,
add index ix_course_id (course_id);
