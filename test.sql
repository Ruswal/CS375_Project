-- best selling product from each category
select S.ctg_name as "Category Name", Product_name as "Product Name", max(qty_sold) as "Quantity sold"

from
(select C.name as ctg_name , P.name as Product_name, sum(quantity) as qty_sold
from Products P
join Category C on P.ctgy_id = C.ctgy_id
join Items I on I.p_id = P.p_id
group by C.ctgy_id) S

group by S.ctg_name

-- useful keywords
-- max()
-- group by
