SELECT 
    JOB_TITLE AS Cargo,
    MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
    ROUND(AVG(MIN_SALARY / 12), 2) AS 'Média mínima mensal',
    ROUND(AVG(MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM
    hr.jobs
GROUP BY JOB_TITLE, `Variação Salarial`
ORDER BY `Variação Salarial`, JOB_TITLE;

-- Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains
-- nonaggregated column 'hr.jobs.JOB_TITLE';
-- this is incompatible with sql_mode=only_full_group_by
