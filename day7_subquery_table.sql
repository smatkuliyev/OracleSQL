-- SUBQUERY TABLE


--SELECT region_name,country_name FROM
--SELECT * FROM
SELECT BOLGE_ISMI,ULKE_ADI,l.city FROM
    (
    SELECT
        r.region_id BOLGE_NO,
        r.region_name BOLGE_ISMI,
        c.country_id ULKE_NO,
        c.country_name ULKE_ADI
    FROM regions R
        JOIN countries C ON c.region_id = r.region_id
    ) X
 -- WHERE x.region_name='Europe';
 -- WHERE x.BOLGE_ISMI='Europe';
  JOIN locations L ON l.country_id = x.ulke_no;
    
    
    