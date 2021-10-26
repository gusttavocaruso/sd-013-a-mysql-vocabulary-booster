SELECT 
    job_title AS Cargo,
    (max_salary - min_salary) AS 'Media Salarial',
    CASE
        WHEN ROUND(max_salary - min_salary, 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(max_salary - min_salary, 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(max_salary - min_salary, 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(max_salary - min_salary, 2) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.jobs;
