use w3schools;
SELECT 
    p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM
    products p
        JOIN
    order_details od ON p.ProductId = od.ProductID
WHERE
    od.Quantity > 80
GROUP BY p.ProductName , p.Price
ORDER BY Produto