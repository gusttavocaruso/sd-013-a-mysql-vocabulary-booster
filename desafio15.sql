USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM employees WHERE JOB_ID = (
SELECT JOB_ID FROM jobs WHERE JOB_TITLE = cargo);
END $$

DELIMITER ;
