SELECT 
	p.ProductName AS "Produto",
	MIN(o.Quantity) AS 'Mínima',
    round(AVG(o.Quantity),2) AS 'Média',
    MAX(o.Quantity) AS 'Máxima'
FROM
    w3schools.order_details AS o
    INNER JOIN w3schools.products  as p ON p.ProductID = o.ProductID
GROUP BY o.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;	
