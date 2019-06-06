SET SCHEMA DB2MOVIES;

--task1

SELECT name,title
FROM movie,movieexec
WHERE producerc# = cert#
AND name = (SELECT name
			FROM movieexec,movie
			WHERE producerc# = cert#
			AND title = 'Star Wars');
			

--task2

SELECT DISTINCT name
FROM movie,movieexec
WHERE producerc# = cert#
AND title in (SELECT title
 			  FROM movie,starsin
		      WHERE movietitle = title
              AND movieyear = year
              AND starname = 'Harrison Ford');
                          
              
--task3

SELECT studio.name, starname
FROM studio,movie,starsin
WHERE studioname = studio.name
AND movietitle = title
AND movieyear = year;

--task4

SELECT starname
FROM movie,movieexec,starsin
WHERE producerc# = cert#
AND movietitle = title
AND movieyear = year
AND networth >= ALL (SELECT networth
                      FROM movieexec);
                                         
                      
--task5

(SELECT name
FROM  movie RIGHT JOIN starsin          
ON movietitle = title
AND movieyear = year
RIGHT JOIN moviestar
ON starname=name)
EXCEPT
(SELECT name
FROM  movie  JOIN starsin          
ON movietitle = title
AND movieyear = year
JOIN moviestar
ON starname=name);

-- or

SELECT name
FROM starsin RIGHT JOIN moviestar
ON starname=name
WHERE starname is NULL;
                      








            
