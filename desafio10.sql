--  10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00
SELECT 
    p.ProductName AS Produto,
    MIN(od.QUANTITY) AS 'Mínima',
    MAX(od.Quantity) AS 'Máxima',
    ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM
    products AS p
        INNER JOIN
    order_details AS od ON p.Productid = od.ProductID
GROUP BY p.ProductName
HAVING ROUND(AVG(od.Quantity), 2) > 20
ORDER BY ROUND(AVG(od.Quantity), 2) ASC , p.ProductName ASC;
