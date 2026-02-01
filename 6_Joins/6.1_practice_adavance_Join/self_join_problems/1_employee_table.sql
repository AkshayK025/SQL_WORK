use db_self_join_practice;
SELECT database()
-- use Table Employee

/*
1️⃣ Employee–Manager Mapping
👉 Show employee name and their manager name.
*/

SELECT
    e.emp_name as employee_name,
    m.emp_name as manager_name
From 
    employee e 
INNER JOIN  employee m ON e.manager_id = m.emp_id;
    
/*    
2️⃣ Employees With Same Salary
👉 Find pairs of employees earning the same salary.
*/

SELECT
    e.emp_name as name1,
    e1.emp_name as name2
From
    employee e
INNER JOIN employee e1 ON e.emp_id < e1.emp_id
AND e.salary = e1.salary;

/*
3️⃣ Employees in Same Department
👉 Find employees working in the same department.
*/

SELECT 
    e.emp_name as name1,
    e1.emp_name as name2,
    e.department_id
From
    employee e INNER JOIN employee e1 on e.department_id = e1.department_id and e.emp_id < e1.emp_id;


SELECT 
    case when department_id = '10' then emp_name end,
    case when department_id = '20' then emp_name end
From
    employee;


/*
4️⃣ Employees Joined After Their Manager
👉 Find employees who joined the company after their manager.
*/

SELECT 
    e.emp_name   AS employee,
    e1.emp_name  AS manager,
    e.join_date  AS employee_join_date,
    e1.join_date AS manager_join_date
FROM employee e
JOIN employee e1
  ON e.manager_id = e1.emp_id
 AND e.join_date > e1.join_date;

/*
5️⃣ Employees With Lower Salary Than Their Manager
👉 Find employees whose salary is less than their manager’s salary.
*/

SELECT
     e.emp_name as employee_name
    ,e1.emp_name as manager_name
    ,e.salary as employee_salary
    ,e1.salary as manager_salary
FROM 
    employee e INNER JOIN employee e1
    on e.manager_id = e1.emp_id
    and e.salary < e1.salary;

/*
6️⃣ Employees Reporting to Same Manager
👉 Find employees who share the same manager.
*/
SELECT
     e.emp_name as employee_name
    ,e1.emp_name as employee_name1
    ,e.manager_id as manager_id
FROM 
    employee e INNER JOIN employee e1
     on e.manager_id = e1.manager_id
     and e.emp_id < e1.emp_id


-- 7.👉 Managers who manage more than 2 employees

SELECT
    e1.emp_name as manager_name
    ,count(e.emp_name) as employee_count

FROM 
    employee e INNER JOIN employee e1
    on e.manager_id = e1.emp_id
GROUP BY 1
HAVING count(e.emp_name)>=2;