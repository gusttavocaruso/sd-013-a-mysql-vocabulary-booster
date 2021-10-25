SELECT
    j.JOB_TITLE AS Cargo,
    ROUND(((MAX(e.SALARY) * 12) - (MIN(e.SALARY) * 12)),
            2) AS 'Variação Salarial',
    ROUND(MIN(e.SALARY), 2) AS 'Média mínima mensal',
    ROUND(MAX(e.SALARY), 2) AS 'Média máxima mensal'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY e.JOB_ID
ORDER BY ROUND(((MAX(e.SALARY) * 12) - (MIN(e.SALARY) * 12)),
        2) , Cargo;
