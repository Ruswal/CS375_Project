drop trigger if exists insert_items;
DELIMITER //
CREATE TRIGGER insert_items 
AFTER INSERT ON Orders 
FOR EACH ROW 
BEGIN 
	INSERT INTO Items (p_id, sv_id, quantity) 
	select p_id, sv_id, quantity from Shopping_cart; 
END //
DELIMITER ; 
