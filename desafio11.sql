SELECT 
    c1.ContactName AS Nome,
    c1.Country AS País,
    COUNT(c1.CustomerID) AS 'Número de compatriotas'
FROM
    customers AS c1,
    customers AS c2
WHERE
    c1.country = c2.country
        AND c1.CustomerID <> c2.CustomerID
GROUP BY Nome, País
ORDER BY Nome;