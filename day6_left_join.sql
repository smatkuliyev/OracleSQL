-- LEFT JOIN

-- TRADITIONAL FORMAT
SELECT
    r.region_id,
    r.region_name,
    c.country_id,
    c.country_name,
    l.city
FROM regions R, countries C, locations L
WHERE   r.region_id =c.region_id(+) 
    AND c.country_id = l.country_id(+)
    AND l.city IS NULL
order by 1, 3, 5;

SELECT
    r.region_id,
    r.region_name,
    c.country_id,
    c.country_name,
    l.city
FROM regions R
    LEFT JOIN countries C ON r.region_id = c.region_id                  --OUTER IS OPTIONAL
    LEFT OUTER JOIN locations L ON c.country_id = l.country_id
 -- AND l.city IS NULL
 -- WHERE l.city IS NULL
order by 1, 3, 5;






