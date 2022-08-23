-- FULL OUTER JOIN

-- ANSI FORMAT

SELECT
    d1.department_id "Dept1 ID",
    d1.department_name "Dept1 Name",
    d2.department_id "Dept2 ID",
    d2.department_name "Dept2 Name"
FROM dept1  D1
    FULL JOIN dept2 D2
        ON d1.department_id = d2.department_id
        ORDER BY 1;
        
-- TRADITIONAL FORMAT

SELECT
    d1.department_id "Dept1 ID",
    d1.department_name "Dept1 Name",
    d2.department_id "Dept2 ID",
    d2.department_name "Dept2 Name"
FROM dept1 D1, dept2 D2
WHERE d1.department_id = d2.department_id(+)
UNION
SELECT
    d1.department_id "Dept1 ID",
    d1.department_name "Dept1 Name",
    d2.department_id "Dept2 ID",
    d2.department_name "Dept2 Name"
FROM dept1 D1, dept2 D2
WHERE d1.department_id(+) = d2.department_id
ORDER BY 1;



