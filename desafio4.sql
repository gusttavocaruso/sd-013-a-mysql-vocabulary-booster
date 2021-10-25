SELECT 
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs AS N
        WHERE
            N.JOB_ID = E.JOB_ID) AS Cargo,
    ROUND(AVG(SALARY), 2) AS 'Média Salarial',
    CASE
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Nível'
FROM
    hr.employees AS E
GROUP BY JOB_ID
ORDER BY `Média Salarial` ASC , Cargo ASC;
