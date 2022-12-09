insert into Session_variable (u_id) values (1); -- change the value to the current user's u_id

select LAST_INSERT_ID() into @session_variable;