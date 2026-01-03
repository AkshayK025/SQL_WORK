SHOW Databases;
CREATE DATABASE  IF NOT EXISTS db_School;
DROP DATABASE IF EXISTS db_School;
use db_School;
SELECT database();
show Tables;
drop table students;
describe students;


-- Parent Table (for Foreign Key)

create table Department
(
    dep_id int primary key auto_increment,
    dep_name varchar(50) unique not null
);




CREATE Table students
(
    s_id int primary key auto_increment,
    name varchar(50) not null,
    email varchar(50) unique not null,
    address text,
    age int check(age>=5),
    height float,
    weight Double,
    fees Decimal(10,2) Default(0.00),
    is_active Bit Default b'1',
    has_scholarship Boolean Default false
);



Alter table students
add (
    birth_date Date,
    admission_datetime DateTime,
    create_at Timestamp Default current_timestamp,
    class_time time,
    admissios_year Year
);

Alter table students
add(
    gender ENUM('Male','Female','Other') NOT null,
    photo Blob,
    dep_id int not null
);

Alter table students
add constraint fk_department
Foreign key (dep_id)
references Department(dep_id)
on Delete Cascade
on update Cascade;
