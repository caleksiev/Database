SET SCHEMA fn45297;

SELECT * from home;

SELECT avg(price),material
FROM product JOIN home
ON product.idProduct = home.idHome
GROUP BY material;

SELECT product.name
FROM product LEFT JOIN purchase
ON product.idProduct = purchase.idProduct
WHERE purchase.idProduct is NULL;
