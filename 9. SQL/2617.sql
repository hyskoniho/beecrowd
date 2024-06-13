SELECT p.name, f.name FROM products p
LEFT JOIN providers f
ON f.id = p.id_providers
WHERE f.name = 'Ajax SA'