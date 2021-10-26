SELECT
    p.ProductName AS Produto,
    MIN(o.Quantity) AS Mínima,
    MAX(o.Quantity) AS Máxima,
    CONVERT( ROUND(AVG(o.Quantity), 2) , CHAR (10)) AS Média
FROM
    w3schools.order_details AS o
        INNER JOIN
    w3schools.products AS p ON o.ProductID = p.ProductID
GROUP BY p.ProductName
HAVING Média > 20
ORDER BY Média;
