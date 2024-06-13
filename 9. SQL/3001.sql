SELECT p.name,
CASE 
WHEN p.type = 'A' THEN 20.0
WHEN P.type = 'B' THEN 70.0
WHEN P.type = 'C' THEN 530.5
END AS price
FROM products p
ORDER BY p.type ASC, p.id DESC