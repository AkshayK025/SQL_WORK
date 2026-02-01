use db_view;
SELECT database();

-- it shows all regular and view tables from database
SHOW tables;


-- List all views in the current database
SHOW FULL TABLES
WHERE Table_type = 'VIEW';


-- List views in a specific database
SHOW FULL TABLES
FROM db_view
WHERE Table_type = 'VIEW';


-- See view definitions (the actual SQL)
SHOW CREATE VIEW top_sale_emp;


-- Updatable views (INSERT/UPDATE via view)
INSERT INTO my_view VALUES (...);


-- to drop view
-- DROP VIEW view1, view2, view3;

DROP VIEW top_sale_emp;