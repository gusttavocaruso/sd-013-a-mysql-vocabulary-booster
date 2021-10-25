SELECT productname AS 'Produto',
MIN(quantity) AS 'Mínima',
MAX(quantity) AS 'Máxima',
ROUND(AVG(quantity), 2) AS 'Média'

FROM w3schools.order_details AS d
INNER JOIN w3schools.products as p
ON d.ProductID = p.ProductID
GROUP BY ProductName
HAVING AVG(quantity) > 20

ORDER BY ROUND(AVG(quantity), 2), ProductName;
