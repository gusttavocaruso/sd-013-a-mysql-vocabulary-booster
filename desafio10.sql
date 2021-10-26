use w3schools;
SELECT 
    p.ProductName AS 'Produto',
    MIN(o_d.Quantity) AS 'Mínima',
    MAX(o_d.Quantity) AS 'Maxima',
    ROUND(AVG(o_d.Quantity), 2) AS 'media'
FROM
    order_details o_d
        JOIN
    products p ON o_d.ProductID = p.ProductID
GROUP BY p.ProductName
HAVING media > 20.00
ORDER BY media , Produto