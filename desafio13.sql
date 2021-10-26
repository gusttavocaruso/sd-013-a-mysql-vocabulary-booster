SELECT p.ProductName AS Produto,
p.Price AS 'Preço'
FROM w3schools.products AS p
INNER JOIN
w3schools.order_details AS od ON p.ProductID = od.ProductID
GROUP BY p.ProductName, p.Price
HAVING MAX(od.Quantity) > 80.00
ORDER BY p.ProductName;
