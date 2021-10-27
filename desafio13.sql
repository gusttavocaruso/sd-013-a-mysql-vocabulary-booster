SELECT 
	P.ProductName as Produto, 
    P.price as Preço
FROM
	w3schools.products as P, w3schools.orders as O, w3schools.order_details as OD
WHERE
	P.ProductID = OD.ProductID AND O.OrderID = OD.OrderID AND OD.quantity > 80
ORDER BY Produto;