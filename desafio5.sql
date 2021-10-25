SELECT job_title AS 'Cargo', 
ROUND((max_salary - min_salary), 2) AS 'Variação Salarial', 
ROUND(min_salary, 2) as 'Média mínima mensal',
ROUND(max_salary, 2) as 'Média máxima mensal'
FROM hr.jobs

ORDER BY ROUND((max_salary - min_salary), 2), job_title;
