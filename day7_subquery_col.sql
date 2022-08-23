-- SUBQUERY COLUMN

SELECT
        e.employee_id,
        e.last_name,
        d.department_name
FROM employees E
    JOIN departments D ON e.department_id = d.department_id
ORDER BY e.employee_id;
    
    
SELECT
        e.employee_id,
        e.last_name,
        (SELECT d.department_name FROM departments D WHERE d.department_id = e.department_id) dept_name
FROM employees E
ORDER BY e.employee_id;