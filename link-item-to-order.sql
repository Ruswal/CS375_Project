/*
Insert the cart items to Items table from Shopping_cart table
During this the o_id will remain null.
*/
-- insert into Items (p_id, sv_id, quantity) 
-- select p_id, sv_id, quantity from Shopping_cart;

/* 
"Linking" all the items to the o_id.
*/
UPDATE Items I
INNER JOIN Shopping_cart SC ON I.sv_id = SC.sv_id
SET I.o_id = @last_order_id;
