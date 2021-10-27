SELECT 
    c.Country 'País'
FROM
    w3schools.customers c 
UNION SELECT 
    d.Country AS 'País'
FROM
    w3schools.suppliers d
ORDER BY País
LIMIT 5;
