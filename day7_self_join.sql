-- SELF JOIN

-- TRADITIONAL FORMAT
SELECT
        e1.first_name,
        e1.last_name,
        e1.manager_id,
        e2.first_name,
        e2.last_name
FROM employees E1, employees E2
WHERE e1.manager_id = e2.employee_id
ORDER BY e1.employee_id
;

SELECT
        e1.first_name ||' '|| e1.last_name "Employee",
        e1.manager_id "Manager ID",
        e2.first_name ||' '|| e2.last_name "Manager"
FROM employees E1, employees E2
WHERE e1.manager_id = e2.employee_id(+)
ORDER BY e1.employee_id
;

-- ANSI FORMAT 

SELECT
        e1.first_name ||' '|| e1.last_name "Employee",
        e1.manager_id "Manager ID",
        e2.first_name ||' '|| e2.last_name "Manager"
FROM employees E1
    INNER JOIN employees E2 
     ON e1.manager_id = e2.employee_id
ORDER BY e1.employee_id;

SELECT
        e1.first_name ||' '|| e1.last_name "Employee",
        e1.manager_id "Manager ID",
        e2.first_name ||' '|| e2.last_name "Manager"
FROM employees E1
    LEFT JOIN employees E2  -- RIGHT, FULL
     ON e1.manager_id = e2.employee_id
ORDER BY e1.employee_id;






