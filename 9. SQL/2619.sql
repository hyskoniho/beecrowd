SELECT p.name, f.name, p.price
FROM products p
LEFT JOIN providers f
ON f.id = p.id_providers
LEFT JOIN categories c
ON c.id = p.id_categories
WHERE c.name = 'Super Luxury'
AND p.price > 1000