SELECT p.ProductName AS 'Produto',
p.Price AS 'Preço'
FROM w3schools.products AS p

INNER JOIN w3schools.order_details AS d
ON p.ProductID = d.ProductID
WHERE d.quantity > 80
ORDER BY ProductName;
