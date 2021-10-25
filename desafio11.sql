USE w3schools;
SELECT 
t1.ContactName AS 'Nome',
t1.Country AS 'País',
COUNT(*) AS 'Números de compatriotas'
FROM customers AS t1, customers AS t2
WHERE t1.Country = t2.Country
AND t1.CustomerID <> t2.CustomerID
GROUP BY t1.CustomerID
ORDER BY t1.ContactName;
