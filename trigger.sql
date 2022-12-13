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

-- dropped
drop trigger if exists empty_cart;
CREATE TRIGGER empty_cart
AFTER UPDATE ON Items
FOR EACH ROW 
DELETE SC FROM Shopping_cart SC
INNER JOIN Users U, Items I
WHERE SC.u_id = U.u_id and SC.p_id = I.p_id;

-- dropped
drop trigger if exists remove_cart_items;
DELIMITER //
create trigger remove_cart_items
after update on Items
for each row
begin
	DELETE FROM Session_variable where u_id = 1;
end //
DELIMITER ; 
