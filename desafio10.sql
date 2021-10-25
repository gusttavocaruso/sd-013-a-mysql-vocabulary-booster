/* 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00
SELECT * FROM products;
SELECT * FROM order_details;
SELECT 
    p.ProductName AS 'Produto', MIN(od.QUANTITY) AS 'Mínima'
FROM
    products AS p
        INNER JOIN
    order_details AS od ON p.Productid = od.ProductID;*/
