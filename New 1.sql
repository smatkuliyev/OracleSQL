/* Formatted on 16/08/2022 11:37:50 (QP5 v5.252.13127.32867) */
/*
CREATE TABLE PERSONEL
(
   PERSONEL_ID          NUMBER,
   FIRST_NAME           CHAR (30),
   LAST_NAME            VARCHAR2 (30),
   JOB_TITLE            VARCHAR2 (15),
   YEAR_OF_EXPERIENCE   INTERVAL YEAR TO MONTH,
   FLIGHT_TIME          INTERVAL DAY TO SECOND,
   APPROVAL_DATE        TIMESTAMP,
   HIRE_DATE            DATE,
   PRIMARY KEY (PERSONEL_ID)
);
*/

--DESC PERSONEL;

/*
INSERT INTO PERSONEL (PERSONEL_ID,
                      FIRST_NAME,
                      LAST_NAME,
                      JOB_TITLE,
                      YEAR_OF_EXPERIENCE,
                      FLIGHT_TIME,
                      APPROVAL_DATE,
                      HIRE_DATE)
     VALUES (1,
             'Mehmet',
             'Celebi',
             'Oracle DBA',
             INTERVAL '30-2' YEAR TO MONTH,
             INTERVAL '16 11:09:08.555' DAY TO SECOND,
             CURRENT_TIMESTAMP,
             TRUNC (SYSDATE));
             */
/*
INSERT INTO PERSONEL (PERSONEL_ID,
                      FIRST_NAME,
                      LAST_NAME,
                      JOB_TITLE,
                      YEAR_OF_EXPERIENCE,
                      FLIGHT_TIME,
                      APPROVAL_DATE,
                      HIRE_DATE)
     VALUES (3,
             'Sulo',
             'Mat',
             'PL/SQL Dev',
             INTERVAL '18' MONTH,
             INTERVAL '16 10:09:08.555' DAY TO SECOND,
             SYSTIMESTAMP,
             SYSDATE);
*/

select * from personel;