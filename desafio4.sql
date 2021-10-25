SELECT J.job_title as Cargo, ROUND(AVG(E.salary), 2) as 'Média salarial',
CASE
WHEN ROUND(AVG(E.salary),2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(E.salary),2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(E.salary),2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN ROUND(AVG(E.salary),2) > 10500 THEN 'CEO'
ELSE null
END AS Senioridade
FROM hr.employees as E, hr.jobs as J
WHERE E.job_id = J.job_id
GROUP BY J.job_title
ORDER BY ROUND(AVG(E.salary), 2) ASC, Cargo;
