SELECT
		p.ProductName AS Produto,
    p.Price AS Preço
FROM
		products AS p
			JOIN
		order_details as od ON p.ProductID = od.ProductID
WHERE od.Quantity > 80
GROUP BY Produto
ORDER BY Produto;