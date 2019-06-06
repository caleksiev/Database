SET SCHEMA DB2SHIPS;

SELECT DISTINCT name
FROM ships JOIN outcomes
ON ships.name = outcomes.ship
AND (name LIKE 'C%' or name LIKE 'K%');

SET SCHEMA DB2MOVIES;



SELECT movietitle,movieyear,count(*) as NUMofActors
FROM STARSIN JOIN MOVIESTAR
ON starname = name
GROUP BY movietitle,movieyear
HAVING count(*) >2;

SET SCHEMA DB2PC;

SELECT model,SUM(price) as SUMPRice
FROM pc
GROUP BY model
HAVING SUM(price) <=  (SELECT SUM(price)
                          FROM laptop);
  
--bonus 

SELECT p1.model,DECIMAL(AVG(price),6,2) as AVGPricePErModel
FROM pc p1
GROUP BY p1.model
HAVING AVG(price) <= ALL (SELECT price
                          FROM laptop
                          WHERE price <= ALL (SELECT price
                                              FROM laptop)
                          AND p1.model = model);    
                                                                                                
