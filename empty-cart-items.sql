-- make sure to empty the cart once the 
-- o_id from the order table is linked with 
-- o_id in Items table

DELETE SC FROM Shopping_cart SC
INNER JOIN Users U, Items I
WHERE SC.u_id = U.u_id and SC.p_id = I.p_id;