use db_School;
show Tables;

-- parent table
create table department6(
    dept_id int primary key auto_increment,
    dept_name varchar(50) unique not null
);

-- child table
create table students6(
    student_id int primary key auto_increment,
    name varchar(50) not null,
    email varchar(100) unique not null,
    address text,
    age int check(age>5),
    height float,
    weight Double,
    fees decimal(10,2) Default(0.00),
    is_active bit Default b'1',
    has_scholarship Boolean Default false
);

-- add some more columns to students6 table

ALTER TABLE students6
add column(
    birth_date date not null,
    admission_datetime DateTime,
    create_at Timestamp Default current_timestamp,
    class_time time,
    admissios_year year
),
add gender ENUM('Male','Female','other') not null,
add photo Blob,
add dep_id int not null;


-- add foreign key to students6 table on column dept_id

ALTER TABLE students6
add constraint fk_dept_id6 foreign key(dep_id) references department6(dept_id)
on delete cascade
on update cascade;