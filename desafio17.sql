USE w3schools;
DELIMITER $$

CREATE TRIGGER trigger_data_insert
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = DATE(NOW());
END $$

DELIMITER ;
