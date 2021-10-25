(SELECT Country AS 'País'
FROM w3schools.customers)
UNION
(SELECT Country AS 'País'
FROM w3schools.suppliers)
ORDER BY País
LIMIT 5;

/* exercício baseado no ex 3 do dia 20.2
Monte uma query que exiba a união dos 5 últimos nomes da tabela actor , o primeiro nome da tabela staff 
e 5 nomes a partir da 15ª posição da tabela customer .
Não permita que dados repetidos sejam exibidos. Ordene os resultados em ordem alfabética.
(SELECT 
    first_name
FROM
    sakila.actor
ORDER BY actor_id DESC
LIMIT 5) UNION (SELECT 
    first_name
FROM
    sakila.staff
LIMIT 1) UNION (SELECT 
    first_name
FROM
    sakila.customer
LIMIT 5 OFFSET 15) ORDER BY first_name;*/