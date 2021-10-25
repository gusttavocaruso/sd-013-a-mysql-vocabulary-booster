SELECT
P.ProductName AS 'Produto',
P.Price AS 'Preço'
FROM
w3schools.products AS P
WHERE EXISTS (
SELECT * FROM w3schools.order_details AS OD
WHERE OD.Quantity > 80
AND OD.ProductID = P.ProductID
)
ORDER BY P.ProductName;
