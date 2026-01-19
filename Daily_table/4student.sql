-- Parent table
CREATE TABLE Department4(
    dept_id int primary key auto_increment,
    Dept_name varchar(50) unique not null
);

-- child table
CREATE TABLE students4(
    student_id  INT primary key auto_increment,
    name varchar(100) not null,
    email text,
    address text,
    age int check(age>5),
    height float,
    weight Double,
    fees decimal(10,2) Default(0.00),
    is_active bit Default b'1',
    has_sholarship Boolean Default false
);

--add columns in students4
ALTER TABLE students4
add column(
    birth_date date not null,
    admission_datetime datetime,
    CREATE_at Timestamp Default current_timestamp,
    class_time time,
    admissios_year year
);

-- add some more column in student4
ALTER TABLE students4
add column(
    gender ENUM('male','female','otehr') not null,
    photo blob,
    dept_id int not null
),
add constraint fk_dept_id4 foreign key(dept_id) references Department4(dept_id) 
on Delete cascade
on update cascade
;