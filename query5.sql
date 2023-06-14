\c world
SELECT * from city
Where name LIKE 'Ser%'
and countrycode in (
    SELECT code
    From country
    WHERE region = 'South America'
);

SELECT * from country
WHERE region='South America'
AND code in (
    SELECT countrycode 
    From city
    WHERE name LIKE 'Ser%'
)
