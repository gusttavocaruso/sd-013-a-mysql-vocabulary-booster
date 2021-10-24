SELECT j.JOB_TITLE Cargo,
(j.MAX_SALARY - j.MIN_SALARY) `Variação Salarial`,
ROUND(j.MIN_SALARY / 12, 2) `Média mínima mensal`,
ROUND(j.MAX_SALARY / 12, 2) `Média máxima mensal`
FROM hr.jobs j
ORDER BY `Variação Salarial`, Cargo;
