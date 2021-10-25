SELECT
  (
    SELECT
      JOB_TITLE
    FROM
      hr.jobs
    WHERE
      JOB_ID = e.JOB_ID
    LIMIT
      1
  ) AS 'Cargo',
  (
    SELECT
      CASE
        WHEN e.SALARY BETWEEN 5000
        AND 10000 THEN 'Baixo'
        WHEN e.SALARY BETWEEN 10001
        AND 20000 THEN 'Médio'
        WHEN e.SALARY BETWEEN 20001
        AND 30000 THEN 'Alto'
        WHEN e.SALARY > 30000 THEN 'Altíssimo'
        ELSE 'outro'
      END
  ) AS 'Nível'
FROM
  hr.employees AS e
WHERE
  'Nível' <> 'outro'
ORDER BY
  'Cargo'
