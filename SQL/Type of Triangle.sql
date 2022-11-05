SELECT
CASE
WHEN A + B <=C OR A + C <= B OR B + C <= A THEN  'Not A Triangle'
WHEN A = B and B = C and A = C THEN 'Equilateral'
WHEN A = B or B = C or A = C THEN 'Isosceles'
WHEN A + B > C THEN 'Scalene'    
END
FROM TRIANGLES;
