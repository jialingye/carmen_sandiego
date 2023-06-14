\c world
SELECT * 
FROM country 
WHERE region ='Southern Europe' 
AND population = (
    SELECT MIN(population) 
    FROM country 
    WHERE region = 'Southern Europe'
    );