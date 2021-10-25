-- SELECT 
--     (SELECT 
--             JOB_TITLE
--         FROM
--             hr.jobs
--         WHERE
--             JOB_ID = e.JOB_ID
--         LIMIT 1) AS 'Cargo',
--     (CASE
--         WHEN MAX(e.SALARY) BETWEEN 5000 AND 10000 THEN 'Baixo'
--         WHEN MAX(e.SALARY) BETWEEN 10001 AND 20000 THEN 'Médio'
--         WHEN MAX(e.SALARY) BETWEEN 20001 AND 30000 THEN 'Alto'
--         WHEN MAX(e.SALARY) > 30000 THEN 'Altíssimo'
--         ELSE 'Baixo'
--     END) AS 'Nível'
-- FROM
--     hr.employees AS e
-- GROUP BY e.JOB_ID
-- ORDER BY JOB_TITLE;

SELECT t2.JOB_TITLE as 'Cargo',
(CASE
         WHEN MAX(t1.SALARY) BETWEEN 5000 AND 10000 THEN 'Baixo'
         WHEN MAX(t1.SALARY) BETWEEN 10001 AND 20000 THEN 'Médio'
         WHEN MAX(t1.SALARY) BETWEEN 20001 AND 30000 THEN 'Alto'
         WHEN MAX(t1.SALARY) > 30000 THEN 'Altíssimo'
         ELSE 'Baixo'
     END) AS 'Nível'
FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
group by t1.JOB_ID
order by t2.JOB_TITLE;
