insert into Returns (o_id, reason, status, return_dt) Values 
(@last_order_id, 'broken', 'pending', NOW());
