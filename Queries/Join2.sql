SET SCHEMA DB2PC;

--task1

SELECT product.maker,product.model,product.type
FROM product LEFT JOIN pc
ON product.model = pc.model
WHERE product.type ='PC'
AND PC.model is NULL
UNION
SELECT product.maker,product.model,product.type
FROM product LEFT JOIN laptop
ON product.model = laptop.model
WHERE product.type ='laptop'
AND laptop.model is NULL
UNION
SELECT product.maker,product.model,product.type
FROM product LEFT JOIN printer
ON product.model = printer.model
WHERE product.type ='printer'
AND printer.model is NULL;

