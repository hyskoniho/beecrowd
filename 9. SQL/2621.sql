SELECT p.name FROM products p
LEFT JOIN providers f
ON f.id = p.id_providers
WHERE p.amount BETWEEN 10 AND 20
AND f.name LIKE 'P%'