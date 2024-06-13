(SELECT city_name, MAX(population) FROM cities GROUP by city_name HAVING max(population) not in (SELECT max(population) from cities) ORDER BY MAX(population) DESC LIMIT 1)
UNION ALL
(SELECT city_name, min(population) FROM cities GROUP by city_name HAVING min(population) not in (SELECT min(population) from cities) ORDER BY min(population) asc LIMIT 1)
