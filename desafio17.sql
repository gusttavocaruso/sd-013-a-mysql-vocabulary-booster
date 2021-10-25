USE w3schools;

DELIMITER //

CREATE TRIGGER tr_ins_dateOfInsert
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN 
SET NEW.OrderDate = CURRENT_DATE();
END //

DELIMITER ;