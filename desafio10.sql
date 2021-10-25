-- 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00

SELECT p.ProductName AS 'Produto', MIN(od.quantity) AS 'Mínima' FROM products AS p INNER JOIN order_details AS od ON p.ProductID = od.ProductID;

