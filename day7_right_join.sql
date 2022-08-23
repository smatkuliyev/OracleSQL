-- RIGHT JOIN

-- TRADITIONAL FORMAT
SELECT
        d.department_id,
        d.department_name,
        e.employee_id,
        e.last_name,
        e.salary
FROM employees E, departments D 
WHERE e.department_id(+)=d.department_id;

-- ANSI FORMAT
SELECT
        d.department_id,
        d.department_name,
        e.employee_id,
        e.last_name,
        e.salary
FROM employees E
    RIGHT OUTER JOIN departments D
       ON d.department_id = e.department_id;
       
SELECT
        d.department_id,
        d.department_name,
        e.employee_id,
        e.last_name,
        e.salary
FROM  departments D
    LEFT JOIN employees E
       ON d.department_id = e.department_id;

