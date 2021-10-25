SELECT * FROM employees;
SELECT * FROM jobs;
SELECT j.job_title AS Cargo, ROUND(AVG(e.SALARY),2) AS 'Média salarial' FROM hr.jobs AS j INNER JOIN employees AS e ON j.JOB_ID = e.JOB_ID
GROUP BY  e.JOB_ID;
