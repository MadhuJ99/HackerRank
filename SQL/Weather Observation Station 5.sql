(select city, length(city) from STATION order by length(city), city limit 1) UNION
(select city, length(city) from STATION order by length(city) desc, city limit 1);
