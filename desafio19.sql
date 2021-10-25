USE hr;
-- SELECT COUNT(*) FROM employees WHERE YEAR(HIRE_DATE) = 1987
DELIMITER //

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, anos INT)
	RETURNS INT READS SQL DATA
		BEGIN
        DECLARE hired_people_qnt INT;
        SELECT 
          COUNT(*)
        FROM employees 
        WHERE 
          YEAR(HIRE_DATE) = anos
        AND
          MONTH(HIRE_DATE) = mes
        INTO hired_people_qnt;
    RETURN hired_people_qnt;
  END //

DELIMITER ;
