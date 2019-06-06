SET SCHEMA DB2MOVIES;
--task1
--SELECT movietitle,movieyear
--FROM STARSIN JOIN MOVIESTAR
--ON starname = name
--WHERE (MOD (YEAR(birthdate),400)) = 0 OR (MOD (YEAR(birthdate),4)) = 0 AND (MOD (YEAR(birthdate),100) <> 0);

--task4

--SELECT name,address,length,title
--FROM movie JOIN STUDIO
--ON name = studioname
--WHERE year > 1990 AND name LIKE 'F%';


--task6

--SELECT name,title,year
--FROM movieexec JOIN movie
--ON cert# = producerc#
--WHERE name in ( SELECT name
--                FROM movieexec JOIN movie
--                ON cert# = producerc#
--               WHERE title = 'Interstellar');

--task5
--SELECT name,SUM(length)as totalLength
--FROM movie JOIN movieexec
--ON cert# = producerc#
--WHERE year < 1980 AND length is NOT NULL
--GROUP BY name;

--task3


--SELECT starname,title,name,networth
--FROM movieexec JOIN movie ON cert# = producerc# 
--JOIN starsin ON title= movietitle AND year = movieyear
--WHERE name in ( SELECT distinct name
--                FROM movieexec JOIN movie 
--                ON cert# = producerc#
--                WHERE networth >= ALL (SELECT networth
--                                       FROM movieexec));


--task2
SELECT distinct t1.studioname,t1.title
FROM movie t1
JOIN
(SELECT distinct studioname,max(year) as lastestMovieYear
FROM movie
GROUP BY studioname) t2
ON t1.studioname = t2.studioname AND t1.year =lastestMovieYear;



