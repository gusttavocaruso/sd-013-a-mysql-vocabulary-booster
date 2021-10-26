-- 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos

/*
1. Estrutura básica da query:

  SELECT 
      (coluna_1) AS `Nome completo`,
      (coluna_2) AS `Total de pedidos`
  FROM
      (tabela_1) AS __
          INNER JOIN
      (tabela_2) AS __ ON (condição)
  GROUP BY `Nome completo`
  ORDER BY `Total de pedidos`;
*/

-- 2. Substituindo com as informações extraidas do enunciado:

SELECT 
    CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
    COUNT(O.OrderID) AS `Total de pedidos`
FROM
    w3schools.employees AS E
        INNER JOIN
    w3schools.orders AS O ON E.EmployeeID = O.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
