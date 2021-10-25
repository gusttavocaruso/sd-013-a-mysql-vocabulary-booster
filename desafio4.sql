USE hr;
SELECT j.JOB_TITLE AS 'CARGO', ROUND(AVG(e.SALARY)) AS 'MEDIA SALARIAL', CASE
WHEN ROUND(AVG(e.SALARY)) <= 5800 THEN 'JUNIOR'
WHEN ROUND(AVG(e.SALARY)) <= 7500 THEN 'PLENO'
WHEN ROUND(AVG(e.SALARY)) <= 10500 THEN 'SENIOR'
ELSE 'CEO'
END AS 'SENIORIDADE'
-- FROM jobs j
inner join employees e on e.JOB_ID = j.JOB_ID
GROUP BY CARGO
ORDER BY `MEDIA SALARIAL`, `CARGO`;
    