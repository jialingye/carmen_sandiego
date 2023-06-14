\c world
SELECT * 
FROM country 
WHERE region = 'Southern Europe' 
AND code = (
    SELECT countrycode 
    FROM countrylanguage
    WHERE language = 'Italian'
    AND percentage = 100.0
);