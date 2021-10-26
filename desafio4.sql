SELECT
    jobs.JOB_TITLE AS 'Cargo',
    round(AVG(employees.SALARY), 2) AS `Média salarial`,
    CASE WHEN AVG(employees.SALARY) >= 2000
    AND AVG(employees.SALARY) <= 5800 THEN "Júnior" WHEN AVG(employees.SALARY) >= 5801
    AND AVG(employees.SALARY) <= 7500 THEN "Pleno" WHEN AVG(employees.SALARY) >= 7501
    AND AVG(employees.SALARY) <= 10500 THEN "Sênior" WHEN AVG(employees.SALARY) >= 10500 THEN "CEO" END AS 'Senioridade'
FROM
    hr.employees AS employees
    INNER JOIN hr.jobs AS jobs ON jobs.JOB_ID = employees.JOB_ID
GROUP BY
    employees.JOB_ID
ORDER BY
    AVG(employees.SALARY),
    jobs.JOB_TITLE;
