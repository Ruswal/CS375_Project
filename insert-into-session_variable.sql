-- change the value to the current user's u_id
insert into Session_variable (u_id) values (1); 

select LAST_INSERT_ID() into @session_variable;