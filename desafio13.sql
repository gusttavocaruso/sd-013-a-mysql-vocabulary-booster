SELECT 
    P.ProductName AS 'Produto', P.Price AS 'Preço'
FROM
    w3schools.order_details AS OD
        INNER JOIN
    w3schools.products AS P ON P.ProductID = OD.ProductID
WHERE
    OD.Quantity > 80
ORDER BY P.ProductName;
