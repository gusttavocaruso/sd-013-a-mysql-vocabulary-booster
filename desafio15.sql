DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(
	IN nome_cargo VARCHAR(100)
)
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS `Média Salarial` FROM employees
WHERE JOB_ID = (
SELECT JOB_ID FROM jobs
WHERE JOB_TITLE = nome_cargo
);
END $$
DELIMITER ;
