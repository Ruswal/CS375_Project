select O.*, A.*, CONCAT(U.f_name, ' ', U.l_name) as Customer_name, U.email
from Orders O
inner join Addresses A
on O.u_id = A.u_id
left join Users U
on A.u_id = U.u_id
where U.u_id = 1
;
