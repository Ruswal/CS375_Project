update Orders O set subtotal = (
	select sum(price*quantity) as totalCost from Items I inner join Products P on  P.p_id = I.p_id WHERe I.o_id = @last_order_id
	) where O.o_id = @last_order_id;