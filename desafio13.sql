SELECT 
    P.ProductName AS Produto,
    P.Price AS Preço
FROM
   w3schools.products AS P 
INNER JOIN
    w3schools.order_details AS OD ON P.ProductID = OD.ProductID
GROUP BY P.ProductName
HAVING  MAX(OD.Quantity) > 80.00
ORDER BY  P.ProductName;

/* Por que não está dando certo?