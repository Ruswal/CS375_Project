-- best selling product from each category

select P.p_id 
from Products P
right join Category C
on P.ctgy_id = C.ctgy_id
where (
	select 
);


select max()

-- useful keywords
-- max()
-- group by