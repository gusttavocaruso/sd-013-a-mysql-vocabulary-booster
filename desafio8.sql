    SELECT 
    c.ContactName AS 'NOME DE CONTATO',
    s.ShipperName AS 'EMPRESA QUE FEZ ENVIO',
    o.OrderDate AS 'data do pedido'
FROM
    orders o
        INNER JOIN
    customers c ON c.CustomerID = o.CustomerID
        INNER JOIN
    shippers s ON o.ShipperId = s.ShipperId
WHERE
    s.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `NOME DE CONTATO` , `EMPRESA QUE FEZ ENVIO` , `data do pedido`;