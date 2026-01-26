use db_School;
show Tables;

-- parent table
CREATE TABLE deptartment8(
    dept_id int primary key auto_increment,
    dept_name varchar(50) unique not null
);

CREATE TABLE student8(
    student_id int primary key auto_increment,
    name varchar(50) not null,
    email varchar(100) unique,
    address text,
    age int check(age>5),
    height float,
    weight Double,
    fees Decimal(10,2) Default(0.00),
    is_active bit Default b'1',
    has_scholarship Boolean Default false
);

-- add some remaining columns to student8
ALTER TABLE student8
add column birth_date date not null,
add column admission_datetime datetime,
add column create_at Timestamp Default current_timestamp,
add column class_time time,
add column addmission_yaer year,
add column gender ENUM('male','female','other') not null,
add column photo blob,
add column dept_id int not null after student_id,
add constraint fk_dept_id8 foreign key(dept_id) references deptartment8(dept_id) 
on delete cascade on update cascade;
