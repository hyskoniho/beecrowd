SELECT c.name, r.rentals_date
FROM customers c
LEFT JOIN rentals r ON r.id_customers = c.id
WHERE EXTRACT(MONTH FROM r.rentals_date) = 9 AND EXTRACT(YEAR FROM r.rentals_date) = 2016;
