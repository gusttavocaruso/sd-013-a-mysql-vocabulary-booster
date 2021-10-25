SELECT 
    ProductName AS Produto,
    MIN(od.Quantity) AS Mínima,
    MAX(od.Quantity) AS Máxima,
    ROUND(AVG(od.Quantity), 2) AS Média
FROM
    w3schools.products AS prod
        INNER JOIN
    w3schools.order_details AS od ON od.ProductID = prod.ProductID
GROUP BY Produto
ORDER BY Média ASC , Produto ASC
