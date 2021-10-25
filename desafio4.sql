SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    ROUND(AVG(employees.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN
            ROUND(AVG(employees.SALARY), 2) <= 5800
                AND ROUND(AVG(employees.SALARY), 2) >= 2000
        THEN
            'Júnior'
        WHEN ROUND(AVG(employees.SALARY), 2) <= 7500 THEN 'Pleno'
        WHEN ROUND(AVG(employees.SALARY), 2) <= 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs jobs,
    hr.employees employees
GROUP BY jobs.JOB_TITLE
ORDER BY `Média salarial` ASC, JOB_TITLE;
