CREATE DATABASE IF NOT EXISTS db_School;
SHOW Databases;
use db_School;
SHOW tables;
-- Parent table
CREATE TABLE Department1(
    Dept_id int primary key auto_increment,
    Dept_name varchar(50) not null
);

-- Table 2
CREATE TABLE Student1(
    student_id int primary key auto_increment,
    name varchar(100) not null,
    email varchar(100) not null unique,
    address text,
    age int check(age>=5),
    height float,
    weight Double,
    fees Decimal(10,2) Default(0.00),
    is_active Bit Default b'1',
    has_sholarship Boolean Default false
);

ALTER TABLE student1
 add(
    birth_date date not null,
    admission_datetime DateTime,
    create_at Timestamp Default current_Timestamp,
    class_time time,
    admissios_year Year
 );

 ALTER TABLE student1
 add(
    gender ENUM('Male','Female','Other') not null,
    photo blob,
    dept_id int not null,
    Foreign key(dept_id) references Department1(dept_id)
    on Delete cascade
    on update cascade
 )