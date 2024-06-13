SELECT temperature, COUNT(temperature)
FROM records
GROUP BY temperature, mark
ORDER BY MARK