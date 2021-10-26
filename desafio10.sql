SELECT
prod.ProductName AS Produto,
MIN(ord.Quantity) AS Mínima,
MAX(ord.Quantity) AS Máxima,
ROUND(AVG(ord.Quantity), 2) AS Média
FROM w3schools.order_details AS ord
  INNER JOIN w3schools.products AS prod
  ON ord.ProductID = prod.ProductID
  GROUP BY ord.ProductID
  HAVING AVG(ord.Quantity) > 20.00
  ORDER BY AVG(ord.Quantity) ASC, prod.ProductName ASC;
