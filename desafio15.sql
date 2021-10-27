USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nome_do_cargo VARCHAR(40))
BEGIN
SELECT ROUND(AVG(E.SALARY), 2) as `Média salarial`
FROM hr.employees as E, hr.jobs as J
WHERE J.job_id = E.job_id AND J.job_title = nome_do_cargo
GROUP BY E.job_id;
END $$

DELIMITER ;
