-- NATURAL JOIN

DESC EMPLOYEES;

-- ANSI FORMAT
SELECT  employee_id, 
        first_name, 
        job_id,
        job_title
FROM EMPLOYEES NATURAL JOIN jobs
ORDER BY employee_id;

-- TRADITIONAL FORMAT
SELECT  E.employee_id, 
        E.first_name, 
        E.job_id,
        J.job_title
FROM employees E, jobs J
WHERE e.job_id = j.job_id
ORDER BY employee_id;