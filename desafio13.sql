SELECT 
    p.productname AS Produto, p.price AS Preço
FROM
    w3schools.order_details AS d
        INNER JOIN
    w3schools.products AS p ON d.productid = p.productid
WHERE
    d.quantity > 80
ORDER BY Produto;