SELECT ROUND(long_w, 4)
FROM station
where lat_n > 38.7780
ORDER BY lat_n 
LIMIT 1;