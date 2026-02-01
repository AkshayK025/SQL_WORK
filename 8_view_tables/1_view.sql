SELECT database();
SHOW tables;

-- 🧠 Problem Statement (Your Task)
-- Create a VIEW that shows:
-- employee_id
-- employee_name
-- department
-- total_sales → total sales amount per employee
-- number_of_sales → total number of sales per employee
-- 📌 Conditions:
-- Include only employees from the Sales department
-- Include only employees whose total sales are greater than 100,000
-- Data should be grouped per employee


Create VIEW top_sale_emp as
SELECT 
    employee_id,
    employee_name,
    department,
    sum(sale_amount) as total_sales,
    count(employee_id) as number_of_sales
from
    employee_sales
WHERE department = 'sales'
GROUP BY
    employee_id,
    employee_name,
    department
HAVING  total_sales > 100000;

