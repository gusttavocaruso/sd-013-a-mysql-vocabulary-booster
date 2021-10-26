SELECT ContactName AS 'Nome', Country AS 'País',
( SELECT COUNT(Country) - 1
  FROM w3schools.customers
  WHERE Country = c.Country 
  HAVING COUNT(Country) > 1
 ) AS 'Número de compatriotas'
FROM w3schools.customers AS c
ORDER BY ContactName;
