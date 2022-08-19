SELECT employee_id, fýrst_name, last_name,manager_ýd 
FROM employees 
CONNECT BY PRIOR employee_id = manager_id;

SELECT employee_id, fýrst_name, last_name,manager_ýd, LEVEL 
FROM employees 
CONNECT BY PRIOR employee_id = manager_id;

SELECT employee_id, fýrst_name, last_name,manager_ýd, LEVEL 
FROM employees 
START WITH employee_id = 100
CONNECT BY PRIOR employee_id = manager_id
ORDER SIBLINGS BY last_name;

SELECT last_name as "Calisan kisi", CONNECT_BY_ROOT last_name as Yoneteci,
LEVEL-1 as Seviye, SYS_CONNECT_BY_PATH(last_name, '->') as path
FROM employees
WHERE department_ýd = 110 AND LEVEL > 1
CONNECT BY PRIOR employee_id = manager_id;



