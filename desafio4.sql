SELECT 
    C.JOB_TITLE AS Cargo,
    ROUND(AVG(p.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(p.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(p.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(p.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(p.SALARY), 2) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS C
        INNER JOIN
    employees AS p ON C.JOB_ID = p.JOB_ID
GROUP BY Cargo
ORDER BY `Média Salarial` , Cargo;
