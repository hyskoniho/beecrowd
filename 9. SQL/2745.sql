SELECT p.name, ROUND(p.salary/10, 2) as tax
FROM people p
WHERE p.salary > 3000