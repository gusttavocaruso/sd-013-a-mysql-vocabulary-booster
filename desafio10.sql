SELECT p.ProductName AS 'Produto',
  MIN(od.Quantity) AS 'Mínima',
  MAX(od.Quantity) AS 'Máxima',
  ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM products p
  INNER JOIN order_details od ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY ROUND(AVG(od.Quantity), 2) ASC,
  p.ProductName ASC;

