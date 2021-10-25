SELECT 
    t2.JOB_TITLE AS 'Cargo',
    (t2.MAX_SALARY - t2.MIN_SALARY) AS 'Variação Salarial',
    ROUND(t2.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(t2.MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    hr.employees AS t1
        INNER JOIN
    hr.jobs AS t2 ON t1.JOB_ID = t2.JOB_ID
GROUP BY t1.JOB_ID
ORDER BY (t2.MAX_SALARY - t2.MIN_SALARY) ASC , t2.JOB_TITLE ASC;
