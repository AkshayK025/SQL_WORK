CREATE database db_window_value;
use db_window_value;
SELECT database();
show tables;


-- Simple Dataset: Monthly Sales
CREATE TABLE monthly_sales (
    month INT,
    sales INT
);

INSERT INTO monthly_sales VALUES
(1, 100),
(2, 120),
(3, 110),
(4, 150),
(5, 130);
