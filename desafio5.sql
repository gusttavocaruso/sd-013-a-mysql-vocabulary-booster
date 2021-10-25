SELECT J.job_title as 'Cargo',
(J.max_salary - J.min_salary) as 'Variação Salarial',
ROUND((min_salary/12), 2)'Média mínima mensal',
ROUND((max_salary/12), 2)'Média máxima mensal'

FROM jobs as J

ORDER BY (J.max_salary - J.min_salary), J.job_title;
