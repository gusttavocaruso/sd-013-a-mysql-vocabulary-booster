SELECT job_title AS 'Cargo',  
max_salary - min_salary as 'Variação Salarial',
ROUND(min_salary/12, 2) AS 'Média mínima mensal',
ROUND(max_salary/12, 2) AS 'Média máxima mensal'
FROM hr.jobs as j
ORDER BY max_salary - min_salary, job_title;
