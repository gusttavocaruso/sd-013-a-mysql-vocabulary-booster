SELECT JOB_TITLE AS Cargo,
MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
MIN_SALARY DIV 12 AS 'Média mínima mensal',
MAX_SALARY DIV 12 AS 'Média máxima mensal'
FROM hr.jobs;
