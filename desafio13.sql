SELECT p.ProductName AS 'Produto',
-- MAX(o.Quantity) AS 'Pedido máximo',
p.Price AS 'Preço'
FROM products p
INNER JOIN order_details o ON p.ProductID = o.ProductID
WHERE o.Quantity > 80
-- GROUP BY p.ProductName
ORDER BY p.ProductName ASC;