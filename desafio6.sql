SELECT 
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
  J.JOB_TITLE AS Cargo,
  H.START_DATE AS `Data de início do cargo`,
  D.DEPARTMENT_NAME AS Departamento
FROM
  hr.job_history AS H
      INNER JOIN
  hr.employees AS E ON E.EMPLOYEE_ID= H.EMPLOYEE_ID
      INNER JOIN
  hr.jobs AS J ON J.JOB_ID = H.JOB_ID
      INNER JOIN
  hr.departments AS D ON H.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , J.JOB_TITLE;

/* Baseado no exercício 7 do dia 20.2
Exercício 7: Monte uma query que exiba o id do ator , nome , id do filme e titulo do filme , 
usando as tabelas actor , 
film_actor e film . Dica: você precisará fazer mais de um JOIN na mesma query .
SELECT 
    A.actor_id, A.first_name, F.film_id, F.title
FROM
    sakila.actor AS A
        INNER JOIN
    sakila.film_actor AS FA ON A.actor_id = FA.actor_id
        INNER JOIN
    sakila.film AS F ON F.film_id = FA.film_id;

Fez o uso de vários inner join.
 Aqui a base é a tabela job_history*/
