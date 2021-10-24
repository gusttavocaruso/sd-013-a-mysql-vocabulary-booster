SELECT p.ProductName Produto, p.Price `Preço`
FROM w3schools.products p
WHERE EXISTS (
  SELECT od.ProductID
  FROM w3schools.order_details od
  WHERE od.Quantity > 80 AND od.ProductID = p.ProductID
)
ORDER BY Produto;
