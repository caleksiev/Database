SET SCHEMA DB2PC;


SELECT DISTINCT p1.model
FROM product p1 JOIN pc
ON p1.model = pc.model
WHERE pc.price <= ALL  (SELECT price
                        FROM laptop JOIN product
                        ON product.model = laptop.model
                        WHERE maker = p1.maker);