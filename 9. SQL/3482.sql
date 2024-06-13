SELECT cc.* FROM (
SELECT 
    CASE
    WHEN u1.posts < u2.posts THEN u1.user_name
    ELSE NULL END AS U1,
    CASE
    WHEN u1.posts < u2.posts then u2.user_name
    ELSE NULL END AS u2
FROM 
	followers f1
INNER JOIN 
	followers f2
ON 
	f1.user_id_fk = f2.following_user_id_fk 
    AND f1.following_user_id_fk = f2.user_id_fk
LEFT JOIN
	users u1
ON 
	u1.user_id = f1.user_id_fk
LEFT JOIN
	users u2
ON
	u2.user_id = f1.following_user_id_fk
ORDER BY
	f1.user_id_fk ASC
) cc
WHERE cc.u1 IS NOT NULL AND cc.u2 IS NOT NULL