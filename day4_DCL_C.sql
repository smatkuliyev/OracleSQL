SELECT * FROM MEHMET.REGIONS ORDER BY REGION_ID;

INSERT INTO mehmet.REGIONS(REGION_ID, REGION_NAME) VALUES (6,'Antartika');

DELETE FROM MEHMET.REGIONS WHERE reg�on_id = 6; 

commit;


SET ROLE R_INSDEL;

INSERT INTO mehmet.REGIONS(REGION_ID, REGION_NAME) VALUES (7,'ABC');
