SELECT
   j.JOB_TITLE AS `Cargo`,
ROUND(AVG(e.SALARY)) AS `Média salarial`
FROM
    hr.employees e
INNER JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID
GROUP BY JOB_TITLE
ORDER BY `Média salarial`;