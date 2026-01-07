SHOW databases;
use db_school;
SELECT DATABASE();
show tables;

-- parent table

create table department3(
    dept_id int primary key auto_increment,
    dept_name varchar(50)
);

DROP table student3;
create table student3(
    student_id int primary key auto_increment,
    name varchar(50) not null,
    email text  not null,
    address text,
    age int check(age>=5),
    height float,
    weight Double,
    fees Double(10,2),
    is_active bit Default b'1',
    has_sholarship Boolean Default false
);

ALTER table student3
add column(
    birth_date date not null,
    admission_datetime datetime,
    CREATE_at Timestamp Default current_timestamp,
    class_time time,
    admissios_year year
);

ALTER table student3
add (
    gender ENUM('Male','Female','Other'),
    photo blob,
    dept_id int not null,
    constraint fk3_dept_id foreign key(dept_id)
    references department3(dept_id)
    on Delete cascade
    on update cascade
);

DESCRIBE student3;
SHOW TABLE STATUS WHERE Name IN ('student3','department3');
