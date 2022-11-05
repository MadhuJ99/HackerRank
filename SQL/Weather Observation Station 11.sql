SELECT DISTINCT city from station
WHERE 
 left(city,1) NOT IN ("a","e","i","o","u") 
 OR
 right(city,1) NOT IN ("a","e","i","o","u") order by city asc;