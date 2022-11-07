select s.Name as Name
from Students s
join Friends f
ON s.ID = f.ID
join Packages p
ON p.ID = f.ID 
join Packages p1
ON p1.ID = f.Friend_ID
where (p.Salary < p1.Salary)
order by p1.Salary;
