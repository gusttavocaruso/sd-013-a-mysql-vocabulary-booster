SELECT 
    d.ProductName, d.Price
FROM
    w3schools.order_details o
        INNER JOIN
    w3schools.products d ON o.ProductID = d.ProductID
GROUP BY o.ProductID
HAVING SUM(o.Quantity) > 80
ORDER BY d.ProductName;
