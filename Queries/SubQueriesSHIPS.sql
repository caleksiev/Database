SET SCHEMA DB2SHIPS;

--1
SELECT country
FROM classes
WHERE class in (SELECT class
                FROM ships)
AND numguns>= ALL (SELECT numguns
                   FROM classes);
                   
--2

SELECT class
FROM ships
WHERE name in (SELECT ship
               FROM outcomes
 			   WHERE result ='sunk');
 			   
 			   
 	
--3		   
SELECT class
FROM classes
WHERE bore = 16.00;

--4
SELECT battle
FROM outcomes
WHERE ship in (SELECT name
               FROM ships
               where class ='Kongo');

--5

SELECT class,numguns,bore
FROM classes;

SELECT class,name
FROM ships
WHERE class in 
(SELECT class
                FROM classes c
                WHERE numguns >= ALL (SELECT numguns
   					                  FROM classes
   					                  WHERE bore=c.bore))
order by class;    					                   					                  					                  
   				