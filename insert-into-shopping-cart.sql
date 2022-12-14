-- change the u_id, p_id and quantity as required
-- this entity holds the data until the order is place 
-- or the session is close/ terminated.

insert into Shopping_cart (u_id, p_id, sv_id, quantity) Values 
(2, 3, @session_variable, 1),
(2, 5, @session_variable, 2),
(2, 1, @session_variable, 1);