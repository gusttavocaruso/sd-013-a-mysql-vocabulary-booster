SELECT
pro.ProductName AS 'Produto',
MIN(det.Quantity) AS 'Mínima',
MAX(det.Quantity) AS 'Máxima',
ROUND(AVG(det.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS `det`
INNER JOIN w3schools.products AS `pro`
ON det.ProductID = pro.ProductID
GROUP BY det.ProductID
HAVING AVG(Quantity) > 20
ORDER BY `Média`, `Produto`;
