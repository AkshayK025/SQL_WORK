use db_School;
SELECT database();
show tables;

-- parent table
create table department5(
    dept_id int primary key auto_increment,
    dept_name varchar(50) unique not null
);

-- child table

create table student5(
    s_id int primary key auto_increment,
    name varchar(50) not null,
    email varchar(100) unique not null,
    address text,
    age int check(age>=5),
    height float,
    weight Double,
    fees decimal(10.2) Default(0.00),
    is_active bit Default b'1',
    has_sholarship Boolean Default false
)

-- add more columns to student5

alter table student5
add column(
    birth_date date not null,
    admission_datetime datetime,
    create_at Timestamp Default current_timestamp,
    class_time time,
    admissios_year year
),
add column(
    gender ENUM('male','female','other') not null,
    photo blob,
    dept_id int not null
),
add constraint fk_dept_id5 foreign key(dept_id) 
references department5(dept_id)
on Delete cascade
on update cascade
;

