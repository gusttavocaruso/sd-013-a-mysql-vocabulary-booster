SELECT 
    c.contactname AS 'Nome de contato',
    s.shippername AS 'Empresa que fez o envio',
    o.orderdate AS 'Data do pedido'
FROM
    w3schools.orders o
        INNER JOIN
    w3schools.customers c ON o.customerid = c.customerid
        INNER JOIN
    w3schools.shippers s ON o.shipperid = s.shipperid
WHERE
    s.shippername IN ('Speedy Express' , 'United Package')
ORDER BY c.contactname , s.shippername, o.orderdate;
