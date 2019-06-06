SET SCHEMA DB2SHIPS;

SELECT name,launched
FROM ships
WHERE name = class;

SELECT name
FROM ships JOIN outcomes
ON ships.name = outcomes.ship
AND (name LIKE 'C%' or name LIKE 'K%');

SELECT DISTINCT country
FROM classes,ships,outcomes
WHERE classes.class = ships.class
AND ships.name = outcomes.ship
AND result = 'sunk';

SELECT  DISTINCT country
FROM classes JOIN ships
ON classes.class = ships.class 
 JOIN outcomes
ON ships.name = outcomes.ship 
WHERE  country not in (SELECT  DISTINCT country
                       FROM classes JOIN ships
                       ON classes.class = ships.class 
                       LEFT JOIN outcomes
                       ON ships.name = outcomes.ship 
                       WHERE result = 'sunk');
                       


SELECT * FROM SHIPS
ORDER BY class;


--ot durjaven
--task7
SELECT classes.class
FROM classes LEFT JOIN ships
ON classes.class = ships.class
WHERE ships.class is NULL
UNION
SELECT distinct classes.class
FROM classes  JOIN ships
ON classes.class = ships.class AND launched > 1921
AND classes.class NOT IN (SELECT classes.class
                         FROM classes  JOIN ships
                         ON classes.class = ships.class AND launched <= 1921);
--task9                                                                          
SELECT country
FROM ( SELECT country,bore,count(*)
      FROM classes  JOIN ships
      ON classes.class = ships.class
      GROUP BY country,bore)
GROUP BY country
HAVING count(*) > 1;  
                   
--task8

SELECT name,country,bore *2.54 as Bore,numguns
FROM classes  JOIN ships
ON classes.class = ships.class
WHERE (numguns = 6 or numguns = 8 or  numguns = 10);
                  
--task10                  
SELECT country
FROM classes
WHERE numguns >= ALL (SELECT numguns FROM classes);

            