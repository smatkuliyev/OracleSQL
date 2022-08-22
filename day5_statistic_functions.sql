 -- AVG,MAX,MIN,SUM,COUNT,STDDEV,VARIANCE,  --GROUP BY, HAVING,  --OVER
 
 SELECT department_id,
        ROUND(AVG(salary), 2) AVG_SALARY,
        MAX(salary) MAX_SALARY,
        MIN(salary) MIN_SALARY,
        SUM(salary) "Total_Salary",
        COUNT(salary),
--      COUNT(*),
        ROUND(STDDEV(salary),2),
        ROUND(VARIANCE(salary),2)
 FROM employees
 --WHERE department_id=90
 GROUP BY department_id
 HAVING COUNT(*)>2
 ORDER BY department_id;
 
 
 
 -- OVER
 
 -- KUMULATIF TOPLAM
 SELECT first_name,salary,
        SUM(salary) OVER( ORDER BY first_name) as TOPLAMMAAS
 FROM employees;
 
 
SELECT  first_name,salary,department_id,
        SUM(salary) OVER( PARTITION BY department_id ORDER BY salary) as SUMTOTAL
    --  MAX(salary) OVER( PARTITION BY department_id ORDER BY salary) as SUMTOTAL
FROM employees
-- WHERE department_id = 30
ORDER BY department_id;
 
 
 
 