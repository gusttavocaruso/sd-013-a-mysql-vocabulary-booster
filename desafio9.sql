SELECT CONCAT(firstname , ' ',lastname) AS 'Nome completo' , 
COUNT(CONCAT(firstname , ' ',lastname)) AS 'Total de pedidos'

FROM w3schools.orders as o
INNER JOIN w3schools.employees as e
ON e.EmployeeID = o.EmployeeID

GROUP BY CONCAT(firstname , ' ',lastname)
ORDER BY COUNT(CONCAT(firstname , ' ',lastname));
