-- SUBQUERY WHERE
--1)

SELECT
        hire_date
FROM employees WHERE last_name = 'Davies';

SELECT
        last_name, TO_CHAR(hire_date, 'DD/MM/YYYY') DATES
FROM employees
WHERE hire_date > TO_DATE('29/01/2005', 'DD/MM/YYYY');

SELECT
        last_name, TO_CHAR(hire_date, 'DD/MM/YYYY') DATES
FROM employees
WHERE hire_date > (SELECT hire_date FROM employees WHERE last_name = 'Davies');

--2)

SELECT
        e.last_name,
        e.job_id,
        e.salary
    FROM employees E
    WHERE e.last_name = 'Taylor' AND e.employee_id = 176;
    
SELECT
        e.employee_id,
        e.last_name,
        e.job_id,
        e.salary
FROM employees E
WHERE e.job_id = 'SA_REP' AND e.salary > 8600;


SELECT
        e.last_name,
        e.job_id,
        e.salary
FROM employees E
WHERE       e.salary > ( SELECT salary FROM employees 
                            WHERE last_name = 'Taylor' AND employee_id = 176 ) 
     AND    e.job_id = ( SELECT job_id FROM employees 
                            WHERE last_name = 'Taylor' AND employee_id = 176 );

-- 3)        
SELECT MIN(SALARY) FROM employees;

SELECT
        e.last_name,
        e.job_id,
        e.salary
FROM employees E
WHERE e.salary = 2100;


SELECT
        e.last_name,
        e.job_id,
        e.salary,
        (SELECT d.department_name FROM departments D WHERE d.department_id = e.department_id) DEPT_NAME
FROM employees E
WHERE e.salary = (SELECT MIN(SALARY) FROM employees);

--4) HAVING

SELECT
    department_id,
    MIN(salary)
FROM employees E
-- WHERE MIN(SALARY) = 2100 -- GROUP CONDITION CAN NOT USE IN WHERE
GROUP BY e.department_id
--HAVING MIN(salary) > 2100
HAVING MIN(salary) > (SELECT MIN(salary) FROM employees WHERE department_id = 50)
;


SELECT MIN(salary) FROM employees WHERE department_id = 50 ;

--5) UPDATE

SELECT
        e.department_id,
        e.last_name,
        e.salary
FROM employees E
WHERE e.department_id = 60
;

SELECT MAX(salary) FROM employees WHERE department_id = 50;

UPDATE employees
SET salary = ( SELECT MAX(salary) FROM employees WHERE department_id = 50 )
WHERE department_id = 60;

--6) DELETE

--ROWID

SELECT
        ROWID,
        last_name,
        salary
FROM employees;

CREATE TABLE EMPLOYEES2 
AS SELECT * FROM employees;

SELECT last_name, COUNT(*) 
FROM employees2 
GROUP BY last_name 
HAVING COUNT(*) > 1; 

DELETE FROM employees2
WHERE ROWID NOT IN ( SELECT MAX(ROWID) FROM employees2 GROUP BY last_name );



    

    

