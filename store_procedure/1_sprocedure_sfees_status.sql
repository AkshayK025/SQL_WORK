show tables;

-- create store procedure to update student fees in students table use db_sprocedure

CREATE PROCEDURE s_fees_status(
    IN p_student_id INT,
    IN p_status VARCHAR(10)
)
BEGIN
    IF p_status = 'Paid' THEN
        UPDATE students
        SET s_fees = TRUE
        WHERE student_id = p_student_id;

    ELSEIF p_status = 'Not Paid' THEN
        UPDATE students
        SET s_fees = FALSE
        WHERE student_id = p_student_id;
    END IF;
END;


-- SHOW PROCEDURE STATUS WHERE Db = 'db_sprocedure';
-- DROP PROCEDURE s_fees_status;