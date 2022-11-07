Select f.x, f.y
from Functions AS f 
join Functions AS f1 on f.x = f1.y and f.y = f1.x
group by f.x, f.y
having count(f.x) > 1 or f.x < f.y
order by f.x;
