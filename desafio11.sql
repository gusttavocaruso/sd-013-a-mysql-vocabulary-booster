SELECT c.ContactName AS Nome,
  c.Country AS 'País',
  (
    SELECT COUNT(c1.Country)
    FROM customers c1
    WHERE c1.Country = c.Country
      AND c.CustomerID <> c1.CustomerID
  ) 'Número de compatriotas'
FROM customers c
GROUP BY c.CustomerID
HAVING `Número de compatriotas` > 0
ORDER BY c.ContactName ASC;
