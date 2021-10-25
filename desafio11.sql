SELECT A.ContactName AS Nome, A.Country AS País,
COUNT(*) AS `Número de compatriotas` 
FROM
w3schools.customers AS A,
w3schools.customers AS B
WHERE
A.Country = B.Country
AND
A.CustomerID <> B.CustomerID
GROUP BY
A.CustomerID
ORDER BY A.ContactName;

/* Baseado no dia 20.2 SELF JOIN 
Exercício 1: Queremos saber os ids e custos de substituição dos filmes que possuem o 
mesmo custo de substituição.
SELECT 
  A.film_id, A.replacement_cost, B.film_id, B.replacement_cost
FROM
  sakila.film AS A,
  sakila.film AS B
WHERE
  A.replacement_cost = B.replacement_cost;
Precisa usar a mesma tabela, e chama ela com um outro nome no caso, A e B, na hora de contar 
conta os países iguais e com o id diferente assim não conta essa pessoa
agrupa pelo CustomerID*/
