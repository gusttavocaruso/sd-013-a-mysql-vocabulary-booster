SELECT 
    c.Country AS País
FROM
    w3schools.customers AS c
        LEFT JOIN
    w3schools.suppliers AS s ON c.Country = s.Country 
UNION SELECT 
    ss.Country AS País
FROM
    w3schools.customers AS cc
        RIGHT JOIN
    w3schools.suppliers AS ss ON cc.Country = ss.Country
ORDER BY País ASC
LIMIT 5;
