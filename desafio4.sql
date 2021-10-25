SELECT j.JOB_TITLE AS Cargo, ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(e.SALARY), 2) > 10500 THEN 'CEO'
WHEN ROUND(AVG(e.SALARY), 2) > 7500 THEN 'Sênior'
WHEN ROUND(AVG(e.SALARY), 2) > 5800 THEN 'Pleno'
ELSE 'Júnior'
END AS Senioridade
FROM hr.jobs j
INNER JOIN hr.employees e ON j.JOB_ID=e.JOB_ID
GROUP BY e.JOB_ID
ORDER BY `Média salarial` ASC, Cargo ASC;
