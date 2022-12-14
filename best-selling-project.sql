select S.FirstName as "First Name", LastName as "Last Name", max(NumberOfOrders) as "HigestOrderQty"

from
(select U.f_name as FirstName, U.l_name as LastName, count(o_id) as NumberOfOrders
from Orders O
join Users U on O.u_id = U.u_id
group by U.f_name) S

group by S.FirstName
