/* Formatted on 19.08.2022 18:09:36 (QP5 v5.252.13127.32867) */
CREATE TABLE EMPLOYEES_COPY
AS
   SELECT * FROM EMPLOYEES;

DESC employees_copy;

SELECT employee_id, salary, commission_pct
  FROM employees_copy
 WHERE employee_id IN (101, 102);

UPDATE employees_copy
   SET salary = salary * 1.2, commission_pct = 0.25
 WHERE employee_id != 100;

COMMIT;

UPDATE employees_copy
  2  SET salary = salary - 400,
  3                commission_pct = null
  4  where employee_id in (101,102);

CLEAR SCR;

ROLLBACK;

ED -> edit editor;

RUN or / -- to run LAST command

SELECT employee_id, salary, commission_pct
  FROM employees_copy
 WHERE department_id = 100;


UPDATE employees_copy A
   SET A.salary =
          (SELECT b.salary
             FROM employees B
            WHERE a.employee_id = b.employee_id)
 WHERE A.department_id = 100;

SELECT employee_id, salary, commission_pct
  FROM employees_copy
 WHERE department_id = 90;

-- DELETE --
SHOW USER;

DELETE FROM employees_copy;

ROLLBACK;

SELECT *
  FROM employees_copy
 WHERE department_id = 90;

DELETE FROM employees_copy
      WHERE department_id = 90;

INSERT INTO employees_copy
   SELECT * FROM employees;