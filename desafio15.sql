-- USE hr;

-- DELIMITER $$

-- CREATE PROCEDURE buscar_media_por_cargo(IN JOB_NAME VARCHAR(100))
-- BEGIN
-- 		SELECT ROUND(AVG(SALARY), 2) AS "Média salarial"
--     FROM employees
--     WHERE JOB_ID = (SELECT JOB_ID FROM jobs WHERE JOB_TITLE = JOB_NAME);
-- END $$

-- DELIMITER ;