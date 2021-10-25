SELECT 
    t2.JOB_TITLE AS Cargo,
    t2.MAX_SALARY - t2.MIN_SALARY AS 'Variação Salarial',
    MIN(t1.SALARY) AS 'Média mínima mensal',
    MAX(t1.SALARY) AS 'Média máxima mensal'
FROM
    hr.employees t1
        INNER JOIN
    hr.jobs t2 ON t1.JOB_ID = t2.JOB_ID
GROUP BY Cargo
ORDER BY 'Variação Salarial' , Cargo;
