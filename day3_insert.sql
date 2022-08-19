/* Formatted on 19/08/2022 11:55:59 (QP5 v5.252.13127.32867) */
DESC regions;

INSERT INTO regions
     VALUES (1, 'Europe');

ALTER TABLE regions
   ADD population NUMBER (15);

--insert into regions values (2, 'Asia'); --hatali, col name gir,daha iyi

INSERT INTO regions (region_id, region_name)
     VALUES (2, 'Asia');

ALTER TABLE regions DROP COLUMN population;

DESC countries;

INSERT INTO countries (country_id, country_name, region_id)
     VALUES ('TR', 'Turkiye', 1);

INSERT INTO countries (country_id, country_name, region_id)
     VALUES ('KK', 'KKTC', 1);

INSERT INTO countries (country_id, country_name, region_id)
     VALUES ('IT', 'Italy', 1);