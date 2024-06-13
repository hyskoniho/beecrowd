-- Advogado com mais clientes
SELECT name, customers_number
FROM lawyers
WHERE customers_number = (SELECT MAX(customers_number) FROM lawyers)

UNION ALL

-- Advogado com menos clientes
SELECT name, customers_number
FROM lawyers
WHERE customers_number = (SELECT MIN(customers_number) FROM lawyers)

UNION ALL

-- Média de clientes
SELECT 'Average' AS name, ROUND(AVG(customers_number))::INTEGER AS customers_number
FROM lawyers;
