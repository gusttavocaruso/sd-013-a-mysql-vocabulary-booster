SELECT 
    j.job_title AS Cargo,
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN  ROUND(AVG(e.SALARY), 2) >= 2000 AND ROUND(AVG(e.SALARY), 2)<= 5800 THEN 'Júnior'
        WHEN  ROUND(AVG(e.SALARY), 2) > 5801 AND ROUND(AVG(e.SALARY), 2) <= 7500 THEN 'Pleno'
        WHEN  ROUND(AVG(e.SALARY), 2) >  7501 AND ROUND(AVG(e.SALARY), 2) <= 10500 THEN 'Sênior'
        ELSE 'CEO'
    END Senioridade
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.job_id
GROUP BY e.JOB_ID
ORDER BY  ROUND(AVG(e.SALARY), 2);
