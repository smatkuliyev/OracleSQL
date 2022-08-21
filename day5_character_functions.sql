-- LOWER, UPPER, INITCAP, LENGTH, SUBSTR

SELECT department_name, 
    LOWER(department_name), 
    UPPER(department_name),
    INITCAP(LOWER(department_name)),
    LENGTH(department_name)
FROM departments;

SELECT SUBSTR(department_name, 1, 5), SUBSTR(department_name, 4, 2), SUBSTR(department_name, 5, 3), SUBSTR(department_name, 5), SUBSTR(department_name, -5, 4)
FROM departments;

--INSTR
SELECT 
    INSTR('MEHMET CELEBIOGLU', 'E') A1,
    INSTR('MEHMET CELEBIOGLU', 'E', 1,1) A2,
    INSTR('MEHMET CELEBIOGLU', 'E', 4,1) A3,
    INSTR('MEHMET CELEBIOGLU', 'E', 4,3) A4,
    INSTR('MEHMET CELEBIOGLU', 'E', -8,1) A5,
    INSTR('MEHMET CELEBIOGLU', 'E', 8,15) A6,
    INSTR('MEHMET CELEBIOGLU', 'EPPP', 1,1) A7
FROM DUAL;

-- REPLACE
SELECT 
    REPLACE('MEHMET CELEBI','MEHMET','M.'),
    REPLACE('MEHMET CELEBI','E','x'),
    REPLACE('MEHMET CELEBI','e','z')
FROM DUAL;

SELECT first_name, job_id,
    REPLACE(job_id, 'IT', 'BT'),
    REPLACE(job_id, 'IT', 'BIL')
FROM employees
WHERE job_id LIKE '%IT%';

-- TRANSLATE 
SELECT TRANSLATE('ORACLE SQL', 'ROAS', '1234') FROM DUAL;

SELECT 'Merhaba Mehmet Hocam' Org_message,
    TRANSLATE(  'Merhaba Mehmet Hocam',
                'abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ',
                'bcdefghijklmnopqrstuvwxyza%BCDEFGHIJKLMNOPQRSTUVWXYZA') "Encrypted message"
FROM DUAL;

SELECT 'Nfsibcb%Nfinfu%Ipdbn' "Encrypted message",
    TRANSLATE(  'Nfsibcb%Nfinfu%Ipdbn',
                'bcdefghijklmnopqrstuvwxyza%BCDEFGHIJKLMNOPQRSTUVWXYZA',
                'abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ') Message
FROM DUAL;


--LPAD, RPAD 
SELECT * FROM employees;

SELECT last_name, 
    RPAD(last_name, 30, '*'),
    LPAD(last_name, 30, '*/')
FROM employees;

-- LTRIM, RTRIM, TRIM
SELECT 
    LTRIM('         Oracle SQL        ') LTRM,
    RTRIM('         Oracle SQL        ') RTRM,
    RTRIM(LTRIM('         Oracle SQL        ')) LRTRM,
    TRIM('         Oracle SQL        ') TRM,
    TRIM(' ' FROM '         Oracle SQL        ') TRMF
FROM DUAL;


-- CONCAT  --SADECE 2 VAR ALIR
SELECT first_name, last_name FROM employees;

SELECT CONCAT(first_name, last_name) FROM employees;

SELECT CONCAT(CONCAT(first_name, ' '), last_name) AS NAME FROM employees;

SELECT first_name|| ' ' || last_name AS NAME
FROM employees;

SELECT  first_name|| ' ' || last_name AS NAME1,
        CONCAT(CONCAT(first_name, ' '), last_name) AS NAME2
FROM employees;

SELECT CONCAT(CONCAT(first_name, ' is a '), job_id) FROM employees;

SELECT first_name || ' is a ' || job_id FROM employees;

SELECT  first_name || ' is a ' || job_id,
        CONCAT(CONCAT(first_name, ' is a '), job_id)
FROM employees;








