-- product2 iPhone rating
insert into Ratings (u_id, p_id, post_dt, rating, comment) Values 
(1, 2, NOW(), 4, 'It has one of the best camera'),
(3, 2, NOW(), 5, 'Perfect phone for everyday use.'),
(5, 2, NOW(), 3, 'Good, but battery drains faster than expected')
;
-- product3 rating
insert into Ratings (u_id, p_id, post_dt, rating, comment) Values 
(2, 3, NOW(), 5, 'Runs all modern softwares.'),
(1, 3, NOW(), 3, 'Overheats when rendering 4k video in Premier Pro.'),
(5, 3, NOW(), 1, 'Poor packaging. Side panel got dented during shipping.'),
(9, 3, NOW(), 5, 'Perfect work from home desktop.'),
(4, 3, NOW(), 4, 'Good for low-mid budget.')
;
