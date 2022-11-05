select sum(c1.population) from CITY c1
inner join COUNTRY c2
ON c1.COUNTRYCODE = c2.CODE
where c2.CONTINENT = 'Asia';
