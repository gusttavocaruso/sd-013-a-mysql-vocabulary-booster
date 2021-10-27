USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN Med VARCHAR(45))
BEGIN
SELECT
(SELECT round(AVG(e.SALARY),2) FROM employees e 
	WHERE e.JOB_ID = j.JOB_ID) as "Média salarial"
FROM jobs j
	WHERE j.JOB_TITLE = Med;
END $$

DELIMITER ;
