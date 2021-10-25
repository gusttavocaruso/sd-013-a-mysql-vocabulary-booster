SELECT 
    hr.jobs.JOB_TITLE AS Cargo,
    ROUND(SUM(hr.employees.SALARY) / COUNT(hr.employees.JOB_ID), 2) AS 'Média salarial',
    CASE
        WHEN
            ROUND(SUM(hr.employees.SALARY) / COUNT(hr.employees.JOB_ID), 2) >= 2000
                AND ROUND(SUM(hr.employees.SALARY) / COUNT(hr.employees.JOB_ID), 2) <= 5800
        THEN
            'Júnior'
    WHEN
            ROUND(SUM(hr.employees.SALARY) / COUNT(hr.employees.JOB_ID), 2) >= 5801
                AND ROUND(SUM(hr.employees.SALARY) / COUNT(hr.employees.JOB_ID), 2) <= 7500
        THEN
            'Pleno'
    WHEN
            ROUND(SUM(hr.employees.SALARY) / COUNT(hr.employees.JOB_ID), 2) >= 7501
                AND ROUND(SUM(hr.employees.SALARY) / COUNT(hr.employees.JOB_ID), 2) <= 10500
        THEN
            'Sênior'
    ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees
        INNER JOIN
    hr.jobs ON hr.jobs.JOB_ID = hr.employees.JOB_ID
GROUP BY hr.employees.JOB_ID
ORDER BY ROUND(SUM(hr.employees.SALARY) / COUNT(hr.employees.JOB_ID), 2), hr.jobs.JOB_TITLE;
