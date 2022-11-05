select 
case
WHEN g.Max_Mark > 69 THEN s.Name
else Null
End as Name,
g.Grade, s.Marks
from Students s
inner join Grades g
ON g.Min_Mark<=s.Marks AND s.Marks<=g.Max_Mark
order by g.Grade desc, s.Name asc, s.Marks desc;
