SELECT P.ProductName AS `Produto`,
P.Price AS `Preço`
FROM w3schools.products AS P
LEFT JOIN w3schools.order_details AS O
ON P.ProductID = O.ProductID
WHERE O.Quantity > 80
ORDER BY `Produto` ASC;