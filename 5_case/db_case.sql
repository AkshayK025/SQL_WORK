create database db_case;
show databases;
use db_case;
select database();
show tables;


CREATE TABLE weather_reports (
    report_id INT,
    city VARCHAR(50),
    temperature INT,     -- in Celsius
    rainfall INT,        -- in mm
    humidity INT,        -- percentage
    wind_speed INT       -- km/h
);


INSERT INTO weather_reports VALUES
(1, 'Delhi', 42, 0, 30, 12),
(2, 'Mumbai', 33, 120, 85, 20),
(3, 'Chennai', 36, 15, 70, 18),
(4, 'Shimla', 12, 5, 60, 10),
(5, 'Jaipur', 40, 0, 25, 15),
(6, 'Kolkata', 34, 80, 78, 22),
(7, 'Leh', 5, 0, 20, 8);
