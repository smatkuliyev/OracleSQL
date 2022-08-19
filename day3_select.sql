SELECT * FROM employees ORDER BY department_id;
SELECT * FROM employees ORDER BY department_id DESC, salary asc, job_id;

SELECT manager_id as mgr, first_name adi, last_name soyismi, email as posta FROM employees
--ORDER BY manager_id;
--ORDER BY 1;
--ORDER BY fýrst_name,last_name;
ORDER BY 2,3;

SELECT manager_id as "mudur no", first_name "ilk adi", last_name soyismi, email as posta FROM employees;

SELECT * FROM employees WHERE department_id = 90
ORDER BY salary DESC;


SELECT * FROM employees WHERE department_id = 100;

SELECT * FROM employees WHERE department_id IN(90,100);
SELECT * FROM employees WHERE department_id = 90 OR department_id = 100;

SELECT * FROM employees WHERE last_name LIKE 'M%';

SELECT * FROM employees WHERE last_name LIKE '%ma%';

SELECT * FROM employees WHERE last_name LIKE '_a_e%';

SELECT * FROM employees WHERE salary>1000 AND commýssýon_pct IS NOT NULL;