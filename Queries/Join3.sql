SET SCHEMA DB2SHIPS;

--task1

SELECT *
FROM classes JOIN ships
ON classes.class = ships.class;


--task2
SELECT *
FROM classes JOIN ships
ON classes.class = ships.class
UNION
SELECT *
FROM classes LEFT JOIN ships
ON classes.class = ships.class
WHERE ships.class is NULL
AND classes.class in (SELECT name
                      FROM ships);
                      
                      
                
--task3
					 
SELECT country ,ships.name
FROM classes JOIN ships
ON classes.class = ships.class
WHERE ships.name in (SELECT ships.name
					 FROM ships LEFT JOIN outcomes
					 ON ships.name = outcomes.ship
					 WHERE outcomes.ship is NULL)
ORDER BY country;

