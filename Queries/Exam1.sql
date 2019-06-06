SET SCHEMA DB2MOVIES;

--task1
SELECT title,year
FROM movie
WHERE year < 1990
AND length > 120 or length is NULL;

--task2
SELECT name
FROM moviestar
WHERE gender = 'M'
AND YEAR(BIRTHDATE) >= ALL (SELECT YEAR(BIRTHDATE)
                            FROM moviestar
                            WHERE gender = 'M');
--task3

SET SCHEMA DB2SHIPS;

SELECT country,count(*) as sunckShips
FROM classes LEFT JOIN ships
ON classes.class = ships.class
LEFT JOIN outcomes
ON ships.name = outcomes.ship
WHERE  result = 'sunk ' --AND ships.class is NULL or outcomes.ship is  NULL
GROUP BY country;

SET SCHEMA DB2PC;

SELECT DISTINCT p1.model
FROM product p1 JOIN pc
ON p1.model = pc.model
WHERE price <= ALL (SELECT price
                    FROM product p2 JOIN laptop
                    ON p1.model = laptop.model
                    WHERE price <= ALL (SELECT price FROM laptop)
                    AND p1.maker = p2.maker);
                    
                    
 select distinct pc.model
from pc join product p on pc.model=p.model
where price < (select min(price) from laptop
	join product t 
	on laptop.model=t.model
	where t.maker=p.maker);                   
