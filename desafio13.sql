SELECT
prod.ProductName AS Produto,
prod.Price AS Preço
FROM w3schools.order_details AS ord
INNER JOIN w3schools.products AS prod
ON ord.ProductID = prod.ProductID
WHERE ord.Quantity > 80
ORDER BY Produto ASC;