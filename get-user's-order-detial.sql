select O.*, CONCAT(A.line1, ', ', A.line2, ', ', P.city, ', ', P.postcode, ', ', A.province, ', ', A.country) as Customer_address, CONCAT(U.f_name, ' ', U.l_name) as Customer_name, U.email as Customer_email
from Orders O
inner join Addresses A
on O.u_id = A.u_id
left join Postcodes P
on P.postcode = A.postcode
left join Users U
on A.u_id = U.u_id
where U.u_id = 1
;
