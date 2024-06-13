SELECT 
    lf.name, ROUND((lf.omega*1.618),3) AS "Fator N"
FROM
    life_registry lf
LEFT JOIN   
    dimensions d
ON 
    d.id = lf.dimensions_id
WHERE 
    d.name IN ('C875', 'C774') 
    AND lf.name LIKE 'Richard%'
ORDER BY 
    lf.omega ASC
    