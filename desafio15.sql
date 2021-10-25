DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(27))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial' FROM hr.employees e
INNER JOIN hr.jobs j ON j.JOB_ID = e.JOB_ID
WHERE job = JOB_TITLE;
END $$
DELIMITER ;
