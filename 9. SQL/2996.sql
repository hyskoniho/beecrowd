SELECT
	p.year,
	u1.name,
    u2.name
FROM
	packages P
LEFT JOIN
	users u1
ON
	u1.id = p.id_user_sender
LEFT JOIN
	users u2
ON
	u2.ID = P.id_user_receiver
WHERE
	u1.address != 'Taiwan' 
    AND u2.address != 'Taiwan'
    AND (p.color = 'blue' OR p.year = 2015)
ORDER BY
    p.year DESC