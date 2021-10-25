SELECT 
    t2.JOB_TITLE AS Cargo,
    ROUND(AVG(t1.SALARY), 2) AS `Média Salarial`,
    CASE
        WHEN ROUND(AVG(t1.SALARY), 2) <= 5800 THEN 'Júnior'
        WHEN ROUND(AVG(t1.SALARY), 2) <= 7500 THEN 'Pleno'
        WHEN ROUND(AVG(t1.SALARY), 2) <= 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees t1
        INNER JOIN
    hr.jobs t2 ON t1.JOB_ID = t2.JOB_ID
GROUP BY Cargo
ORDER BY ROUND(AVG(t1.SALARY), 2), Cargo;
