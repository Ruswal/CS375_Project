-- get avg ratings of particular product
select avg(rating) as product_rating
from Ratings R
where p_id = 2
;


-- get avg ratings of all product
select avg(rating) as product_rating, p_id
from Ratings R
group by p_id
;