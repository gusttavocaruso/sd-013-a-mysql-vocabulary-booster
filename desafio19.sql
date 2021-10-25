USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(monthIN INT, yearIN INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_hired INT;
    SELECT COUNT(*)
    FROM employees
    WHERE YEAR(HIRE_DATE) = yearIN AND MONTH(HIRE_DATE) = monthIN
    INTO total_hired;
    RETURN total_hired;
END $$

DELIMITER ;
