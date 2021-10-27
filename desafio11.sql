SELECT * FROM w3schools.customers;

SELECT T1.ContactName AS Nome,
T1.Country AS País, (
SELECT COUNT(Country) FROM w3schools.customers
WHERE T1.Country = Country
AND T1.ContactName <> ContactName
) AS 'Número de compatriotas'
FROM w3schools.customers as T1
WHERE T1.ContactName <> 'Zbyszek'
ORDER BY T1.ContactName;
