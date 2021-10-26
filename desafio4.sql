SELECT 
    ho.job_title AS Cargo,
    ROUND(AVG(he.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(he.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(he.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(he.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(he.salary) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.employees AS he
        INNER JOIN
    hr.jobs AS ho ON he.job_id = ho.job_id
GROUP BY ho.job_id
ORDER BY 'Média salarial' ASC , ho.job_title ASC;

-- Este requisito eu resolvi consultando o repositorio do mateus henrique T-13-A : 
-- https://github.com/tryber/sd-013-a-mysql-vocabulary-booster/blob/matheushtc-mysql-vocabulary-booster/desafio4.sql
