SELECT 
    ProductName AS 'Produto',
    MIN(Quantity) AS 'Mínima',
    MAX(Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS 'Média'
FROM
    w3schools.products
        INNER JOIN
    w3schools.order_details ON w3schools.order_details.ProductID = w3schools.products.ProductID
GROUP BY w3schools.order_details.ProductID
HAVING ROUND(AVG(Quantity), 2) > 20.00
ORDER BY ROUND(AVG(Quantity), 2) , ProductName;
