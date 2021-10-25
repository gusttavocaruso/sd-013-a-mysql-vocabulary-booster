SELECT J.JOB_TITLE AS Cargo , ROUND(AVG(E.SALARY),2) AS `Média salarial` ,
CASE
      WHEN  ROUND(AVG(E.SALARY),2) BETWEEN 2000 AND 5800 THEN 'Júnior'
      WHEN  ROUND(AVG(E.SALARY),2) BETWEEN 5801 AND 7500 THEN 'Pleno'
      WHEN  ROUND(AVG(E.SALARY),2) BETWEEN 7501 AND 10500 THEN 'Sênior'
      ELSE 'CEO'
  END AS 'Senioridade'
  FROM hr.jobs AS J
INNER JOIN hr.employees AS E ON J.JOB_ID= E.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY `Média Salarial`, J.JOB_TITLE;

/* Parte da resolução baseada no exercício de fixação dia 20.1 
5. Escreva uma query que exiba quatro informações: o maior salário, o menor salário, 
a soma de todos os salários e a média dos salários. 
Todos os valores devem ser formatados para ter apenas duas casas decimais.
SELECT MAX(SALARY),
    MIN(SALARY),
  SUM(SALARY),
    ROUND(AVG(SALARY), 2)
FROM hr.employees;*/
