SELECT p.name, f.name FROM products p
LEFT JOIN providers f
ON f.id = p.id_providers
WHERE p.id_categories = 6