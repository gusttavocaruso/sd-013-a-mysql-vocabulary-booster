SELECT 
    c1.ContactName AS `Nome`,
    c1.Country AS País,
    (SELECT 
            COUNT(Country)
        FROM
            w3schools.customers c2
        WHERE
            c2.Country = c1.Country
                AND c2.ContactName != c1.ContactName) AS `Número de compatriotas`
FROM
    w3schools.customers c1
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
-- Com consulta no código do colega Murilo Rainho para corrigir erro que estava dando na subquery
