-- USE hr;

-- DELIMITER $$

-- CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(P_MONTH INT, P_YEAR INT)
-- RETURNS INT READS SQL DATA
-- BEGIN
-- 		DECLARE TOTAL_HIRED INT;
-- 		SELECT 
--     COUNT(*)
-- FROM
--     employees
-- WHERE
--     YEAR(HIRE_DATE) = P_YEAR
--         AND MONTH(HIRE_DATE) = P_MONTH INTO TOTAL_HIRED;
--     RETURN TOTAL_HIRED;
-- END $$

-- DELIMITER ;