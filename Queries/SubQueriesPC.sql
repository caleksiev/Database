SET SCHEMA DB2PC;

--1

SELECT DISTINCT maker
FROM product
WHERE model in (SELECT model
                FROM pc
                WHERE speed>=500);
                
                
--2

SELECT model
FROM printer
WHERE price >= all (SELECT price
                    FROM printer);
                    
--3

SELECT model
FROM laptop
WHERE speed < any (SELECT speed
                   FROM pc);
                   
--4

SELECT maker
FROM product
WHERE model in (SELECT model
				FROM printer
				WHERE color ='y' AND price <= ALL (SELECT price
				                                   FROM printer
				                                   WHERE color ='y'));

--5

SELECT maker
FROM  product 
WHERE model in (SELECT t1.model
                FROM (SELECT DISTINCT model,hd
                     FROM pc
                     WHERE ram <= ALL (SELECT ram
                                       FROM pc)) t1
                WHERE t1.hd >= ALL (SELECT hd
                                    FROM pc
                                    WHERE hd=t1.hd));
                                                                   
        
                      				                             
			
                   
                    

