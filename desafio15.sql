-- Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo

USE hr
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(20))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial' FROM hr.employees AS e
WHERE cargo = (
SELECT j.job_title FROM hr.jobs AS j WHERE e.job_id = j.job_id)
GROUP BY e.job_id;
END $$
DELIMITER ;
