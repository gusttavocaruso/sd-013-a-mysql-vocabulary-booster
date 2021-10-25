SELECT 
    c.ContactName AS 'Nome',
    c.Country 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers AS wc
        WHERE
            wc.Country = c.Country
                AND wc.ContactName != c.ContactName
        GROUP BY wc.Country) 'Número de compatriotas'
FROM
    w3schools.customers c
HAVING `Número de compatriotas`
ORDER BY Nome;
