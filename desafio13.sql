SELECT

products.ProductName AS 'Produto',

products.Price AS 'Preço'

FROM w3schools.products AS products

INNER JOIN w3schools.order_details AS Odetails ON products.ProductID = Odetails.ProductID

GROUP BY `Produto`, `Preço`

HAVING MAX(Odetails.Quantity) > 80

ORDER BY `produto`;
