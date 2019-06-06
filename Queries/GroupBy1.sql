SET SCHEMA DB2PC;

--task1

select AVG(speed)
from pc;

--task2

select maker,AVG(SCREEN) as AVG_SCREEN
from product,laptop
where product.model=laptop.model
group by maker;

--task3

select AVG(speed)
from laptop
where price>1000;

--task4

SELECT AVG(price)
FROM product,pc
WHERE product.model=pc.model
and maker='A';

--task5

select decimal(avg(price), 9, 2) as AvgPrice
from
(
select maker, price
from product p, pc
where p.model=pc.model and maker='B'
union all
select maker, price
from product p, laptop l
where p.model=l.model and maker='B'
)T;

--task6
SELECT speed,AVG(price) as AVG_PRICE
FROM pc
group by speed;

--task7

SELECT maker,count(1) as cnt
FROM product,pc
WHERE product.model=pc.model
GROUP BY maker
HAVING count(*)>=3;



--task8

SELECT maker
FROM product,pc
WHERE product.model=pc.model
AND pc.price >= ALL (SELECT price
                     FROM pc);
 
 
                     
--task9

SELECT speed,AVG(price)
FROM pc
GROUP BY speed
HAVING AVG(speed) > 800;

--task10


SELECT distinct AVG(hd)
FROM product,pc
WHERE product.model = pc.model
AND maker in (SELECT maker
              FROM product,printer
              WHERE product.model = printer.model);
                           
   




