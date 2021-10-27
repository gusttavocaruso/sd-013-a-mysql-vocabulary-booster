SELECT 
    products.ProductName AS 'Produto',
    MIN(details.Quantity) AS 'Mínima',
    MAX(details.Quantity) AS 'Máxima',
    ROUND(AVG(details.quantity), 2) AS 'Média'
FROM
    w3schools.products products,
    w3schools.order_details details
WHERE 
	products.ProductID = details.ProductID
GROUP BY products.ProductID
HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto`;
