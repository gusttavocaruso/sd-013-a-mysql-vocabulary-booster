SELECT job_title AS Cargo, ROUND(AVG(employees.salary),2) AS 'Média salarial',
CASE
WHEN AVG(employees.salary) <= 5800 THEN 'Júnior'
WHEN AVG(employees.salary) <= 7500 THEN 'Pleno'
WHEN AVG(employees.salary) <= 10500 THEN 'Sênior'
WHEN AVG(employees.salary) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM jobs, employees
WHERE jobs.job_id = employees.job_id
GROUP BY employees.job_id
ORDER BY AVG(employees.salary);
