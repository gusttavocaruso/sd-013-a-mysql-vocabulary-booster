SELECT P.productName as Produto, 
MIN(OD.quantity) as Mínima,
MAX(OD.quantity) as Máxima,
ROUND(AVG(OD.quantity), 2) as Média

FROM order_details as OD, products as P

WHERE P.productID = OD.productID

GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;
