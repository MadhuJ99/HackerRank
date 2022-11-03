select N,
case
when p is null then 'Root'
when n in (select distinct p from bst) then 'Inner'
else 'Leaf'
End as nodetype
from bst
order by N