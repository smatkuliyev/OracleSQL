SELECT * FROM departments ORDER BY department_id;

CREATE TABLE DEPT1
AS SELECT * FROM departments WHERE department_id <= 160;

CREATE TABLE DEPT2
AS SELECT * FROM departments WHERE department_id >= 100;

SELECT * FROM dept1 ORDER BY 1;

SELECT * FROM dept1
UNION
SELECT * FROM dept2
ORDER BY 1;

-- KOLON SAYILARI AYNI OLMASI LAZIM, UNION VE UNION ALL ���N
-- KOLON SAYISI VE VER� T�P� AYNI OLMASI LAZIM
SELECT department_id, department_name FROM dept1
UNION
SELECT department_id, department_name FROM dept2
ORDER BY 1;

-- INTERSECT & MINUS
SELECT * FROM dept1
INTERSECT
SELECT * FROM dept2;

SELECT * FROM dept2
MINUS
SELECT * FROM dept1;

