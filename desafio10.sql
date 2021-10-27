SELECT p.ProductName AS 'Produto',
MIN(o.quantity) AS 'Mínima',
MAX(o.quantity) AS 'Máxima',
AVG(o.quantity) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o ON o.ProductID = p.ProductID
GROUP BY Produto HAVING Média > 20
ORDER BY Média, Produto; 

