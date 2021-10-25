SELECT j.JOB_TITLE AS Cargo, ROUND(AVG(e.salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(e.salary), 2) > 10500 THEN 'CEO'
WHEN ROUND(AVG(e.salary), 2) > 7500 THEN 'Sênior'
WHEN ROUND(AVG(e.salary), 2) > 5800 THEN 'Pleno'
WHEN ROUND(AVG(e.salary), 2) > 2000 THEN 'Júnior'
END AS 'Senioridade'
FROM hr.jobs j, hr.employees e
WHERE e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_ID
ORDER BY `Média salarial`, Cargo;
