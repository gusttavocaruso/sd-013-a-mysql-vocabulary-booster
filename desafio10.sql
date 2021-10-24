SELECT p.ProductName Produto,
MIN(od.Quantity) `Mínima`,
MAX(od.Quantity) `Máxima`,
ROUND(AVG(od.Quantity), 2) `Média`
FROM w3schools.order_details od
INNER JOIN w3schools.products p ON p.ProductID = od.ProductID
GROUP BY p.ProductName
HAVING `Média` > 20
ORDER BY `Média`, p.ProductName;
