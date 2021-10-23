SELECT 
    JOB_TITLE AS Cargo,
    (MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
    ROUND(MIN(MIN_SALARY / 12), 2) AS 'Média mínima mensal',
    ROUND(MAX(MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM
    jobs
GROUP BY Cargo
ORDER BY `Variação Salarial`, JOB_TITLE;