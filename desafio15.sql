USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(30))
BEGIN
	SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial' FROM employees e
    WHERE e.JOB_ID = (SELECT j.JOB_ID FROM jobs j WHERE j.JOB_TITLE=cargo)
    GROUP BY cargo;
END $$

DELIMITER ;
