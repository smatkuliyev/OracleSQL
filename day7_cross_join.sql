-- CROSS JOIN

-- TRADITIONAL FORMAT

SELECT
    e.last_name,
    d.department_name
FROM employees E, departments D;

-- ANSI FORMAT

SELECT
    e.last_name,
    d.department_name
FROM employees E CROSS JOIN departments D;