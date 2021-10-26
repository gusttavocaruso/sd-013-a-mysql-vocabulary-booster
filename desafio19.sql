DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month_entry INT, year_entry INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE pessoas_contratadas INT;
SELECT COUNT(*) FROM hr.employees
WHERE MONTH(HIRE_DATE) = month_entry AND YEAR(HIRE_DATE) = year_entry INTO pessoas_contratadas;
RETURN pessoas_contratadas;
END $$

DELIMITER ;
