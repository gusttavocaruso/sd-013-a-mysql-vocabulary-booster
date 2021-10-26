SELECT
    jobs.JOB_TITLE AS `Cargo`,
    jobs.MAX_SALARY - jobs.MIN_SALARY AS `Variação Salarial`,
    round(AVG(jobs.MIN_SALARY / 12), 2) AS `Média mínima mensal`,
    round(AVG(jobs.MAX_SALARY / 12), 2) AS `Média máxima mensal`
FROM
    hr.jobs AS jobs
GROUP BY
    jobs.JOB_ID
ORDER BY
    `Variação Salarial`,
    `Cargo`;
