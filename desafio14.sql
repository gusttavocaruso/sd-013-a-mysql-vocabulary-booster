use w3schools;
    
SELECT 
    Country AS 'Pais'
FROM
    customers 
UNION SELECT 
    Country AS 'Pais'
FROM
    suppliers
ORDER BY `Pais`
LIMIT 5;