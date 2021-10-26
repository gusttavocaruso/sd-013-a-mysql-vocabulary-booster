SELECT ProductName AS Produto,
MIN(DETAILS.Quantity) AS Mínima,
MAX(DETAILS.Quantity) AS Máxima,
ROUND(AVG(Quantity), 2) AS Média
FROM w3schools.products AS PRODUCT
INNER JOIN w3schools.order_details AS DETAILS
ON PRODUCT.ProductID = DETAILS.ProductID
GROUP BY ProductName
HAVING AVG(Quantity) > 20
ORDER BY AVG(Quantity),
ProductName;
