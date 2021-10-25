SELECT 
    job_title AS 'Cargo',
    CASE
        WHEN min_salary <= 10000 THEN 'Baixo'
        WHEN
            min_salary > 10001
                AND min_salary < 20000
        THEN
            'Médio'
        WHEN
            min_salary > 20001
                AND min_salary < 30000
        THEN
            'Alto'
        ELSE 'Altíssimo'
    END AS 'Nível'
FROM
    jobs
ORDER BY job_title;
