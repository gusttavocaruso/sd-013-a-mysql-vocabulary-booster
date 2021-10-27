SELECT 
    customer1.ContactName AS 'Nome',
    customer1.Country AS 'País',
    COUNT(customer1.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers customer1,
    w3schools.customers customer2
WHERE
    customer1.Country = customer2.country
        AND customer1.CustomerID <> customer2.CustomerID
GROUP BY `Nome`, `País`
ORDER BY `Nome`, `País`;
