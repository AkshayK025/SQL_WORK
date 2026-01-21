use db_school;
SHOW tables;

-- parent table
CREATE TABLE IF NOT EXISTS Department2(
    dept_id  int primary key auto_increment,
    dept_name varchar(50) not null
);

-- child table
CREATE  TABLE IF NOT EXISTS student2(
    student_id int primary key auto_increment,
    name varchar(50) not null,
    email varchar(100) unique not null,
    address text,
    age int check(age>=5),
    height float,
    weight Double,
    fees Decimal(10,2) Default(0.00),
    is_active Bit Default b'1',
    has_sholarship Boolean Default false
);

ALTER table student2
add(
    birth_date date not null,
    admission_datetime DateTime,
    CREATE_at Timestamp Default current_Timestamp,
    class_time time,
    admissios_year year
);

ALTER TABLE student2
add(
        gender ENUM('Male', 'Female', 'Other') not null,
        photo blob,
        dept_id int not null,
        constraint fk_dept_id Foreign key(dept_id) references Department2(dept_id) 
        on Delete cascade on update cascade
    );