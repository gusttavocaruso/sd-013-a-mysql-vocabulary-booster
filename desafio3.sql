SELECT JOB_TITLE AS 'Cargo', (MAX_SALARY - MIN_SALARY) AS Diferença_entre_salários_máximo_e_mínimo
FROM hr.jobs
ORDER BY Diferença_entre_salários_máximo_e_mínimo, Cargo;
