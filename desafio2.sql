SELECT 
    JOB_TITLE AS Cargo,
    CASE
        WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
        WHEN
            MAX_SALARY > 20000
                AND MAX_SALARY <= 30000
        THEN
            'Alto'
        WHEN
            MAX_SALARY > 10000
                AND MAX_SALARY <= 20000
        THEN
            'Médio'
        ELSE 'Baixo'
    END AS 'Nível'
FROM
    hr.jobs
ORDER BY JOB_TITLE ASC;
