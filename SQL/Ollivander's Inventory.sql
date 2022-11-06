SELECT
    w.id,
    wp.age,
    w.coins_needed,
    w.power
FROM wands AS w
JOIN wands_property AS wp USING(code)
WHERE 
    wp.is_evil = 0 AND
    w.coins_needed = (SELECT MIN(w1.coins_needed)
                       FROM wands AS w1
                       JOIN wands_property AS wp1 USING(code)
                       WHERE w.power = w1.power AND wp.age = wp1.age)
ORDER BY power DESC, age DESC;