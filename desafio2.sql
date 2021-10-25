SELECT
    JOB_TITLE AS Cargo,
    
    CASE
        WHEN MAX_SALARY between 5000 AND 10000 THEN 'Baixo'
        WHEN MAX_SALARY between 10001 AND 20000 THEN 'Médio'
        WHEN MAX_SALARY between 20001 AND 30000 THEN 'Alto'
        ELSE 'Altíssimo'
    END AS Nível
FROM hr.jobs ORDER BY JOB_TITLE ASC;
