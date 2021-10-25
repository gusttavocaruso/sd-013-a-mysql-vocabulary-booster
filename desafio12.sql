SELECT CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) `Nome completo funcionário 1`,
t1.SALARY `Salário funcionário 1`,
t1.PHONE_NUMBER `Telefone funcionário 1`,
CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) `Nome completo funcionário 2`,
t2.SALARY `Salário funcionário 2`,
t2.PHONE_NUMBER `Telefone funcionário 2`
FROM hr.employees t1, hr.employees t2
WHERE t1.JOB_ID = t2.JOB_ID AND CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) != CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
