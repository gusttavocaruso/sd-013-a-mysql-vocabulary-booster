SELECT
	p.ProductName AS `Produto`,
    MIN(od.Quantity) AS `Mínima`,
    MAX(od.Quantity) AS `Máxima`,
    ROUND(AVG(od.Quantity)) AS `Média`
 FROM
	products p
INNER JOIN
	order_details od
ON
	p.ProductID = od.ProductID
GROUP BY `Produto`
HAVING `Média` > 20.00
ORDER BY `Média` ASC,
`Produto` ASC;
	
	