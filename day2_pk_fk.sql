/* Formatted on 19/08/2022 11:55:38 (QP5 v5.252.13127.32867) */
ALTER TABLE regions ADD ( CONSTRAINT reg_id_pk PRIMARY KEY (region_id) );

ALTER TABLE countries ADD (
    CONSTRAINT countr_reg_fk FOREIGN KEY ( region_id )
        REFERENCES regions ( region_id )
);

ALTER TABLE countries ADD ( CONSTRAINTS countr_id_pk PRIMARY KEY(country_id)
);

ALTER TABLE locations ADD(
CONSTRAINTS loc_id_pk PRIMARY KEY (location_id),
CONSTRAINTS loc_c_id FOREIGN KEY(country_id) REFERENCES countries(country_id) );

ALTER TABLE DEPARTMENTS ADD (
CONSTRAINT dp_id_pk PRIMARY KEY (department_id),
CONSTRAINT dep_loc_fk FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

--alter table departments add location_id number(4);

ALTER TABLE jobs ADD(
CONSTRAINTS job_id_pk PRIMARY KEY (job_id)
);

ALTER TABLE employees ADD (
CONSTRAINT emp_emp_id_pk PRIMARY KEY (employee_id),
CONSTRAINT emp_dept_fk FOREIGN KEY (department_id) REFERENCES departments(department_id),
CONSTRAINT emp_job_fk FOREIGN KEY (job_id) REFERENCES jobs(job_id),
CONSTRAINT emp_manager_fk FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

--alter table employees add department_id number(2);

ALTER TABLE departments ADD(
CONSTRAINT dept_mgr_id FOREIGN KEY (manager_id) REFERENCES employees (employee_id)
);

ALTER TABLE job_history ADD (
CONSTRAINT jhist_emp_id_st_date_pk PRIMARY KEY (employee_id, start_date),
CONSTRAINT jhist_job_id_fk FOREIGN KEY (job_id) REFERENCES jobs (job_id),
CONSTRAINT jhist_emp_id_fk FOREIGN KEY (employee_id) REFERENCES employees (employee_id),
CONSTRAINT jhist_dept_fk FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

--alter table departments
  --  drop constraint dept_mgr_id;

--DROP TABLE regions;
    --drop TABLE regions cascade constraints;

    --drop TABLE countries cascade constraints;