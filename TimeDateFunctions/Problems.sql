CREATE DATABASE TimeDate;
use TimeDate;

-- Drop tables if they already exist
DROP TABLE IF EXISTS logins;
DROP TABLE IF EXISTS sales;

-- Create `logins` table
CREATE TABLE logins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    login_time DATETIME NOT NULL,
    logout_time DATETIME NOT NULL
);

-- Insert sample data into `logins`
INSERT INTO logins (user_id, login_time, logout_time) VALUES
(101, '2025-06-17 08:15:00', '2025-06-17 09:45:00'),
(102, '2025-06-16 10:30:00', '2025-06-16 11:00:00'),
(103, '2025-06-15 19:00:00', '2025-06-15 20:15:00'),
(101, '2025-06-13 07:45:00', '2025-06-13 08:30:00'),
(102, '2025-06-11 21:10:00', '2025-06-11 22:40:00'),
(104, '2025-06-10 06:00:00', '2025-06-10 06:45:00');

-- Create `sales` table
CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    sale_amount DECIMAL(10,2) NOT NULL,
    sale_time DATETIME NOT NULL
);

-- Insert sample data into `sales`
INSERT INTO sales (user_id, sale_amount, sale_time) VALUES
(201, 100.00, '2025-06-17 14:30:00'),
(202, 250.00, '2025-06-12 10:00:00'),
(203, 175.00, '2025-05-27 09:15:00'),
(201, 300.00, '2025-05-05 16:45:00'),
(204, 225.00, '2025-04-10 13:10:00');


-- Problem Statements
/*
1.Get all records from the last 7 days
2.Group sales by month or quarter
3.Find the average login duration per day
4.Show peak login hours
5.Count weekend transactions
*/