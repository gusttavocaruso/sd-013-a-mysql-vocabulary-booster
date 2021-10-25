SELECT
	J.JOB_TITLE AS 'Cargo',
    J.MAX_SALARY - J.MIN_SALARY AS 'Variação Salarial',
    ROUND(AVG(J.MIN_SALARY) / 12, 2) AS 'Média mínima mensal',
    ROUND(AVG(J.MAX_SALARY) / 12, 2) AS 'Média máxima mensal'
FROM
	hr.jobs AS J
INNER JOIN
	hr.employees AS E
    ON J.JOB_ID = E.JOB_ID
GROUP BY E.JOB_ID
ORDER BY J.MAX_SALARY - J.MIN_SALARY, J.JOB_TITLE;
