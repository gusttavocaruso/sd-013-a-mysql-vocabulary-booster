SELECT
    jobs.JOB_TITLE AS 'Cargo',
    jobs.MAX_SALARY - jobs.MIN_SALARY AS 'Variação Salarial',
    round(AVG(jobs.MIN_SALARY / 12), 2) AS 'Média mínima mensal',
    round(AVG(jobs.MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM
    hr.employees AS employees
    INNER JOIN hr.jobs AS jobs ON jobs.JOB_ID = employees.JOB_ID
GROUP BY
    employees.JOB_ID
ORDER BY
    jobs.MAX_SALARY - jobs.MIN_SALARY,
    jobs.JOB_TITLE;
