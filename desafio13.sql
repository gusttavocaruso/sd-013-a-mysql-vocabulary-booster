SELECT P.ProductName AS Produto,
P.Price AS Preço
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS D
WHERE P.ProductID = D.ProductID
AND D.Quantity > 80
ORDER BY P.ProductName;
