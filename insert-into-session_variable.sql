-- change the value to the current user's u_id
insert into Session_variable (u_id) values (2); 

select LAST_INSERT_ID() into @session_variable;


-- NOTE: make sure to  delete the session variable(s) after each order is been made.