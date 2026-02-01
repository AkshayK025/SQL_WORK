show  tables;

-- DELIMITER $$

CREATE TRIGGER after_student_insert
AFTER INSERT ON students
FOR EACH ROW
BEGIN
    INSERT INTO student_log(message)
    VALUES (CONCAT('Student ', NEW.name, ' added'));
END;
-- END $$
-- DELIMITER ;
SHOW TRIGGERS; -- to view all created trigger 
SHOW CREATE TRIGGER after_student_insert; -- to view structure of trigger


insert INTO students VALUES(1,'Akshay',100);
