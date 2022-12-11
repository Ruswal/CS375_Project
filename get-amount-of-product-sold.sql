select sum(quantity) as amount_sold, 
(P.price * sum(quantity)) as sales, P.name, C.name
from Items I, Products P, Category C
where I.p_id = P.p_id and P.ctgy_id = C.ctgy_id and P.p_id = 5;