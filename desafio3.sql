SELECT JOB_TITLE AS Cargo, CONVERT(MAX_SALARY - MIN_SALARY, DOUBLE) AS "Diferença entre salários máximo e mínimo"
FROM hr.jobs
ORDER BY CONVERT(MAX_SALARY - MIN_SALARY, double) ASC, Cargo;
