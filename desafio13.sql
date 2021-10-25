SELECT
pro.ProductName AS `Produto`,
pro.Price AS `Preço`
FROM w3schools.products as `pro`
WHERE EXISTS (
SELECT * FROM w3schools.order_details WHERE pro.ProductID = ProductID AND Quantity > 80
)
ORDER BY Produto;
