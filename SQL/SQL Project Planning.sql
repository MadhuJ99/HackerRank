Select Start_Date, min(End_Date)
from 
   (Select Start_Date 
   from Projects 
   where Start_Date Not in 
   (Select End_date from Projects)) A,
   (Select End_Date from Projects where End_Date Not in 
   (Select Start_Date from Projects)) B
Where Start_Date < End_date
group by Start_Date
order by (min(End_date) - Start_Date), Start_Date;

