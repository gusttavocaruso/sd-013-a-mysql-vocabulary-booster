SELECT job_title as 'Cargo', ROUND(AVG(salary)) as 'Média Salarial',
CASE
WHEN ROUND(AVG(salary),2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(salary),2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(salary),2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN ROUND(AVG(salary),2) > 10500 THEN 'CEO'
ELSE null
END AS Senioridade
FROM employees as E, jobs as J
WHERE E.job_id = J.job_id
GROUP BY job_title
ORDER BY salary, job_title;
