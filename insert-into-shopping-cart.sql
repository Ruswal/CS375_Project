-- change the u_id, p_id and quantity as required

insert into Shopping_cart (u_id, p_id, sv_id, quantity) Values 
(1, 1, @session_variable, 1),
(1, 2, @session_variable, 2);