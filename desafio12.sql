SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) `Nome completo funcionário 1`,
e.SALARY `Salário funcionário 1`, e.PHONE_NUMBER `Telefone funcionário 1`,
CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) `Nome completo funcionário 2`,
em.SALARY `Salário funcionário 2`, em.PHONE_NUMBER `Telefone funcionário 2`
FROM hr.employees e, hr.employees em
WHERE em.JOB_ID = e.JOB_ID AND em.EMPLOYEE_ID != e.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
