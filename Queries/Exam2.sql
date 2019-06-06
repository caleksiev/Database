SET SCHEMA DB2MOVIES;

SELECT name,gender
FROM moviestar
WHERE YEAR(birthdate)> 1948
AND name Like 'J%'
ORDER BY name DESC;

SET SCHEMA DB2SHIPS;


SELECT DISTINCT ships.name,country
FROM classes JOIN ships
ON classes.class = ships.class
LEFT JOIN outcomes
ON ships.name = outcomes.ship
WHERE result <> 'sunk' or outcomes.ship is NULL;

SET SCHEMA DB2PC;

SELECT product.model
FROM product JOIN laptop
ON product.model = laptop.model
WHERE screen = 11 or screen = 15
GROUP BY product.model;


SELECT model,DECIMAL(AVG(price),6,2) as AVGPricePErModel
FROM pc
GROUP BY model
HAVING AVG(price) <= ALL (SELECT price
                          FROM laptop
                          WHERE price <= ALL (SELECT price
                                              FROM laptop));




