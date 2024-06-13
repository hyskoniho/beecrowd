SELECT p.name, f.name, c.name FROM products p
LEFT JOIN providers f
ON f.id = p.id_providers
LEFT JOIN categories c
ON c.id = p.id_categories
WHERE f.name = 'Sansul SA' AND c.name = 'Imported'