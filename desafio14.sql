SELECT DISTINCT cus.Country `País`
FROM w3schools.customers cus
UNION ALL
SELECT DISTINCT s.Country `País`
FROM w3schools.suppliers s
WHERE EXISTS (
  SELECT c.Country, s.Country
  FROM w3schools.suppliers s
  INNER JOIN w3schools.customers c ON s.Country != c.Country
  ORDER BY c.Country
)
ORDER BY `País` LIMIT 5;
