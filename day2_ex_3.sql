/* Formatted on 17/08/2022 16:39:20 (QP5 v5.252.13127.32867) */
CREATE TABLE regions
(
   region_id     NUMBER,
   region_name   VARCHAR (25)
);

CREATE TABLE countries
(
   country_id     CHAR (2),
   country_name   VARCHAR2 (40),
   region_id      NUMBER
);

CREATE TABLE locations
(
   location_id      NUMBER (4),
   street_address   VARCHAR2 (40),
   postal_code      VARCHAR2 (12),
   city             VARCHAR2 (30) NOT NULL,
   state_province   VARCHAR2 (25),
   country_id       CHAR (2)
);

CREATE TABLE departments
(
   department_id     NUMBER (2),
   department_name   VARCHAR2 (30),
   manager_id        NUMBER (4)
);

--drop table departments;

CREATE TABLE jobs
(
   job_id       VARCHAR2 (20),
   job_title    VARCHAR2 (35) NOT NULL,
   min_salary   NUMBER (6),
   max_salary   NUMBER (6)
);

CREATE TABLE employees
(
   employee_id      NUMBER (6),
   first_name       VARCHAR2 (20),
   last_name        VARCHAR2 (25),
   email            VARCHAR2 (25) NOT NULL,
   phone_number     VARCHAR2 (20),
   hire_date        DATE NOT NULL,
   job_id           VARCHAR2 (20),
   salary           NUMBER (8, 2),
   commission_pct   NUMBER (2, 2),
   manager_id       NUMBER (6),
   CONSTRAINT emp_salary_min CHECK (salary > 0),
   CONSTRAINT emp_email_uk UNIQUE (email)
);

CREATE TABLE job_history
(
   employee_id     NUMBER (6),
   start_date      DATE NOT NULL,
   end_date        DATE NOT NULL,
   job_id          VARCHAR2 (10),
   department_id   NUMBER (4),
   CONSTRAINT jhist_date_interval CHECK (end_date > start_date)
);