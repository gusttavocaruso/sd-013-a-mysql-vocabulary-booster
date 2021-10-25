SELECT j.JOB_TITLE AS 'CARGO',
  (
    SELECT ROUND(AVG(e.SALARY), 2)
    FROM hr.employees e
    WHERE e.JOB_ID = j.JOB_ID
  ) AS 'Média salarial',
  CASE
    WHEN 'Média salarial' BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN 'Média salarial' BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN 'Média salarial' BETWEEN 7501 AND 10500 THEN 'Sênior'
    ELSE 'CEO'
  END AS 'Senioridade'
FROM hr.jobs j
ORDER BY 'Médial salarial' ASC,
  JOB_TITLE ASC;