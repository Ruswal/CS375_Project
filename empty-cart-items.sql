DELETE SC FROM Shopping_cart SC
INNER JOIN Users U, Items I
WHERE SC.u_id = U.u_id and SC.p_id = I.p_id;