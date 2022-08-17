alter table regions add(
constraint reg_id_pk PRIMARY key (region_id)
);

alter table countries add(
CONSTRAINT countr_reg_fk FOREIGN KEY (region_id) REFERENCES regions(region_id)
);