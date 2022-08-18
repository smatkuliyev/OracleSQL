alter table regions add ( constraint reg_id_pk PRIMARY KEY (region_id) );

ALTER TABLE countries ADD (
    CONSTRAINT countr_reg_fk FOREIGN KEY ( region_id )
        REFERENCES regions ( region_id )
);

alter table countries add ( constraints countr_id_pk primary key(country_id)
);

ALTER TABLE locations add(
constraints loc_id_pk primary key (location_id), 
constraints loc_c_id foreign key(country_id) references countries(country_id) );

ALTER TABLE DEPARTMENTS ADD (
CONSTRAINT dp_id_pk PRIMARY KEY (department_id),
constraint dep_loc_fk FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

alter table departments add location_id number(4);

alter table jobs add(
constraints job_id_pk primary key (job_id)
);

alter table employees add (
CONSTRAINT emp_emp_id_pk PRIMARY KEY (employee_id),
constraint emp_dept_fk foreign key (department_id) references departments(department_id),
constraint emp_job_fk foreign key (job_id) references jobs(job_id),
constraint emp_manager_fk foreign key (manager_id) references employees(employee_id)
);

alter table employees add department_id number(2);

alter table departments add(
constraint dept_mgr_id foreign key (manager_id) references employees (employee_id)
);

alter table job_history add (
constraint jhist_emp_id_st_date_pk primary key (employee_id, start_date),
constraint jhist_job_id_fk foreign key (job_id) references jobs (job_id),
constraint jhist_emp_id_fk foreign key (employee_id) references employees (employee_id),
constraint jhist_dept_fk foreign key (department_id) references departments(department_id)
);





