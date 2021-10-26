-- 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80
SELECT 
    p.productName AS 'Produto', p.price AS 'Preço'
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS od ON p.ProductID = od.ProductID
WHERE
    od.Quantity > 80
ORDER BY Produto ASC;
