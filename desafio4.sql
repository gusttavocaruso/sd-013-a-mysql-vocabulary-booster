SELECT job_title AS 'Cargo', ROUND(AVG(salary), 2) AS 'Média Salarial',
CASE
WHEN ROUND(AVG(salary), 2) <= 5800.00 THEN 'Júnior'
WHEN ROUND(AVG(salary), 2) <= 7500.00 THEN 'Pleno'
WHEN ROUND(AVG(salary), 2) <= 10500.00 THEN 'Sênior'
ELSE 'CEO'
END AS "Senioridade"
FROM hr.employees AS e

INNER JOIN hr.jobs AS j
ON j.job_id = e.job_id
GROUP BY job_title
ORDER BY ROUND(AVG(salary), 2), job_title;
