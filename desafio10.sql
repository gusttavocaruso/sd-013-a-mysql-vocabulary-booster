SELECT 
    p.ProductName AS `Produto`,
    MIN(od.quantity) AS Mínima,
    MAX(od.quantity) AS Máxima,
    ROUND(AVG(od.quantity), 2) AS Média
FROM
    w3schools.order_details od
        INNER JOIN
    w3schools.products p ON od.ProductID = p.ProductID
GROUP BY od.ProductID
HAVING AVG(od.quantity) > 20.00
ORDER BY Média , Produto;
