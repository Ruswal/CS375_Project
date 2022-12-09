insert into Orders (u_id, order_dt, delv_dt, status, subtotal) Values (1, DATE(NOW()), DATE_ADD(DATE(NOW()), INTERVAL 3 DAY), 'Approved', 0.0);

/* 
declared a variable @last_order_id to store
last inserted o_id in Orders table.
This is later used to update the o_id in Items table
*/
select LAST_INSERT_ID() INTO @last_order_id;
