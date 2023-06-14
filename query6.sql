\c world
SELECT * from city
WHERE id = (
    SELECT capital
    From country
    WHERE code = 'BRA'
);
