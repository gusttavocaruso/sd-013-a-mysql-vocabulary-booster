SELECT p.ProductName `Produto`,
p.Price `Preço`
FROM w3schools.order_details od
INNER JOIN w3schools.products p ON od.ProductID = p.ProductID
GROUP BY od.ProductID
HAVING MAX(od.Quantity) > 80
ORDER BY `Produto`;
