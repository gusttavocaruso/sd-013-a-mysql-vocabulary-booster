use w3schools;
SELECT 
    c.ContactName AS 'nome',
    c.Country AS 'Pais',
    COUNT(c.CustomerID) AS 'numero de compatriotas'
FROM
    customers c,
    customers d
WHERE
    c.Country = d.Country
        AND c.CustomerID <> d.CustomerID
GROUP BY `nome` , `Pais`
ORDER BY `nome`;