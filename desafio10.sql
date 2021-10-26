SELECT p.ProductName as Produto, MIN(o.Quantity) as Mínima, MAX(o.Quantity) as Máxima, ROUND(AVG(o.Quantity),2) as Média
FROM w3schools.order_details as o
INNER JOIN w3schools.products as p ON o.ProductID = p.ProductID
GROUP BY p.ProductName
HAVING Média > 20.00
ORDER BY Média;
