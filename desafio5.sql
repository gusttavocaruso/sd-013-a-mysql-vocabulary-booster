SELECT job_title as 'Cargo', (max_salary - min_salary) as 'Variação Salarial',
ROUND(AVG(min_salary)/12,2)'Média mínima mensal', ROUND(AVG(max_salary)/12,2)'Média máxima mensal'
FROM jobs 
GROUP BY job_title
ORDER BY (max_salary - min_salary), job_title;
