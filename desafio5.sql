SELECT JOB_TITLE,
(MAX_SALARY - MIN_SALARY) 'Variação Salarial',
ROUND((MIN_SALARY / 12),2) 'Média mínima mensal',
ROUND((MAX_SALARY / 12),2) 'Média máxima mensal'
FROM jobs
ORDER BY (MAX_SALARY - MIN_SALARY) ASC,
JOB_TITLE ASC;