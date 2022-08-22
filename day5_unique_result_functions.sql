-- UNIQUE RESULT FUNCTIONS

-- NVL(A,B)   BOS ISE 2. SAYI KOY

SELECT first_name,commission_pct,
    NVL(commission_pct,0)
 -- NVL(commission_pct,'BOS') --ERROR, VAR DATA TYPE SHOULD BE SAME
FROM EMPLOYEES;

--NVL2(P1,P2,P3)  DOLU ISE 2. SAYI, BOS ISE 3. SAYI KOY

SELECT first_name, salary, commission_pct,
    NVL2(commission_pct, salary*(1+commission_pct),salary)
FROM employees;

-- NULLIF(A,B)  ESIT ISE NULL, DEGILSE A DONDURUR

SELECT first_name, salary, commission_pct,
    NULLIF(salary, salary- NVL(commission_pct,0))
FROM employees;

-- GREATEST, LEAST

SELECT  GREATEST(1,2,3,-2,100,-500,5,3,2),
        GREATEST('MEHMET','AHMET','AYSE','Kemal', 'zeynep'),
        LEAST(1,2,3,-2,100,-500,5,3,2),
        LEAST('MEHMET','AHMET','AYSE','Kemal', 'zeynep')
FROM DUAL;

-- DECODE

SELECT last_name,department_id,
        DECODE(department_id,   10, 'Muhasebe', 
                                20, 'Arastirma', 
                                30, 'satis', 
                                40, 'IK', 
                                50, 'BT', 'Diger')  as Department_name
FROM employees
order by 2;

-- CASE

SELECT last_name,department_id,
        CASE department_id
            WHEN 10 THEN 'Muhasebe'
            WHEN 20 THEN 'Arastirma'
            WHEN 30 THEN 'satis'
            WHEN 40 THEN 'IK'
            WHEN 50 THEN 'BT'
            ELSE 'Diger'
        END as Department_name
FROM employees
order by 2;

--UID, USER

SELECT UID, USER FROM DUAL;
SHOW USER;

-- SYS_CONTEXT

SELECT  SYS_CONTEXT ('USERENV', 'SESSION_USER') as USERNAME,
        SYS_CONTEXT ('USERENV', 'ISDBA') as ISDBA,
        SYS_CONTEXT ('USERENV', 'HOST') as HOST,
        SYS_CONTEXT ('USERENV', 'INSTANCE') as INSTANCE,
        SYS_CONTEXT ('USERENV', 'IP_ADDRESS') as IP,
        SYS_CONTEXT ('USERENV', 'DB_NAME') as DBNAME
FROM DUAL;






