-- INNER JOIN 

-- TRADITIONAL FORMAT
SELECT 
        e.last_name,
        e.department_id,
        d.department_name,
        l.city
FROM employees E, departments D, locations L
WHERE   e.department_id = d.department_id 
    AND d.locatýon_id = l.locatýon_id
ORDER BY e.last_name;


-- ANSI FORMAT

SELECT
    e.last_name,
    e.department_id,
    d.department_name,
    l.city
FROM employees E
    JOIN departments D ON e.department_id = d.department_id -- INNER IS OPTIONAL
    INNER JOIN locations L ON d.location_id = l.location_id
ORDER BY e.last_name;
    
    
    
    
    
    
    
    