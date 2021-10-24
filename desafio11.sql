SELECT c.ContactName Nome, c.Country `País`, (
  SELECT COUNT(*) FROM w3schools.customers cus
  WHERE cus.Country = c.Country AND cus.ContactName != c.ContactName
  GROUP BY cus.Country
) `Número de compatriotas`
FROM w3schools.customers c
HAVING `Número de compatriotas` IS NOT NULL
ORDER BY Nome;
