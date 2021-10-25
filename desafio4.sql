SELECT job_title AS 'Cargo', ROUND(AVG(salary), 2) AS 'Média Salarial',
CASE
WHEN salary <= 5800 THEN 'Júnior'
WHEN salary <= 7500 THEN 'Pleno'
WHEN salary <= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS "Senioridade"
FROM hr.employees AS e

INNER JOIN hr.jobs AS j
ON j.job_id = e.job_id
GROUP BY job_title
ORDER BY ROUND(AVG(salary), 2), job_title;