use db_maths;


show tables;

ALTER TABLE add_1_10
rename to num_1_10;

SELECT 
    a.number as col_A,
    b.number as Col_B,
    a.number + b.number 
FROM 
    num_1_10 a
cross join 
    num_1_10 b
ORDER BY 
    a.number,
    b.number;