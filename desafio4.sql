SELECT 
    t2.JOB_TITLE AS Cargo,
    ROUND(AVG(t1.SALARY), 2) AS `Média Salarial`,
    CASE
        WHEN AVG(t1.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(t1.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(t1.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees t1
        INNER JOIN
    hr.jobs t2 ON t1.JOB_ID = t2.JOB_ID
GROUP BY Cargo
ORDER BY `Média Salarial` , Cargo;
