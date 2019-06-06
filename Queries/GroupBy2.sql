SET SCHEMA DB2SHIPS;

--task1

SELECT count(*)
FROM(SELECT class
FROM classes
GROUP BY class);

--task2

SELECT class,AVG(numguns) as AVG_NUMGUNS
FROM classes
GROUP BY class;

--task3

SELECT AVG(numguns)
FROM classes JOIN ships
ON classes.class = ships.class;

--task4
SELECT classes.class,MAX(launched),MIN(launched)
FROM classes JOIN ships
ON classes.class = ships.class
GROUP BY classes.class;

--task5

SELECT classes.class,count(*)
FROM classes JOIN ships 
	ON classes.class = ships.class
JOIN outcomes ON ships.name = outcomes.ship
WHERE result = 'sunk'
GROUP BY classes.class;

--or
SELECT classes.class,count(*)
FROM classes , ships, outcomes
WHERE result = 'sunk'
AND  classes.class = ships.class
AND ships.name = outcomes.ship
GROUP BY classes.class;
--or
select class, count(o.ship)
from ships s join outcomes o on s.name=o.ship
where o.result='sunk'
group by class;

--task6
select class, count(o.ship)
from ships s join outcomes o on s.name=o.ship
where o.result='sunk'
AND class in (SELECT classes.class 
			  FROM classes JOIN ships
			  ON classes.class = ships.class
			  GROUP by classes.class
			  HAVING count(*) >2)
group by class;				

--task7

SELECT country,AVG(bore)
FROM classes JOIN ships 
ON classes.class = ships.class
GROUP BY country;

