SELECT 
	c.name, ROUND((s.math*2 + s.specific*3 + s.project_plan*5)/10.0, 2) as avg
FROM 
	candidate c
LEFT JOIN
	score s
ON
	s.candidate_id = c.id
GROUP BY
	c.name, s.math, s.specific, S.project_plan
ORDER BY
	avg DESC