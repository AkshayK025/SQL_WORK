use db_School;
show Tables;

-- parent table

CREATE TABLE Department7(
    dept_id int primary key auto_increment,
    dept_name varchar(50) unique not null
);

-- child table
CREATE TABLE student7(
    student_id int primary key auto_increment,
    name varchar(50) not null,
    email varchar(100) unique,
    address tinytext null,
    age int check(age>5),
    height float,
    weight Double,
    fees Decimal(10,2) Default(0.00),
    is_active bit Default b'1',
    has_scholarship Boolean Default false
);

-- add columns to table student7
ALTER TABLE student7
add column birth_date date not null,
    add column admission_datetime datetime,
    add column create_at Timestamp Default current_timestamp,
    add column class_time time,
    add column admission_year year,
    add column gender ENUM('male', 'female', 'other') not null,
    add column photo blob null,
    add dept_id int not null,
    add constraint fk_dept_id7 foreign key(dept_id) references Department7(dept_id) on delete cascade on update cascade;