SELECT p.id, p.name FROM products p
LEFT JOIN categories c
on p.id_categories = c.id
WHERE c.name LIKE 'super%'