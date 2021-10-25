SELECT 
    j.JOB_TITLE Cargo,
    j.MAX_SALARY - j.MIN_SALARY AS 'Variação Salarial',
    ROUND(AVG(j.MIN_SALARY),2) "Média mínima mensal",
    ROUND(AVG(j.MAX_SALARY),2) "Média máxima mensal"
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs j ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_ID;
