SELECT contactName AS 'Nome de contato',
shippername AS 'Empresa que fez o envio',
orderdate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON c.customerid = o.customerid
INNER JOIN w3schools.shippers AS s
ON o.shipperid = s.shipperid
ORDER BY contactname, shippername, orderdate;
