SELECT DISTINCT c.Country
FROM customers c
INNER JOIN suppliers s ON c.Country = s.Country
ORDER BY Country ASC
LIMIT 5;