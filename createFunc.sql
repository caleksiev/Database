SET SCHEMA fn45297@

CREATE FUNCTION CNT_ELEC_PRODUCT_SALLES (idEmpl Int)
RETURNS INT
BEGIN ATOMIC
	DECLARE cntSales Int;
	SET cntSales = (SELECT count(*)
                   FROM (SELECT idProduct 
                         FROM purchase 
                         WHERE idEmployee =idEmpl ) as M
                   WHERE M.idProduct in (SELECT idProduct
                                         FROM garden));
   RETURN cntSales;
END@

--TEST
SELECT name,fn45297.CNT_ELEC_PRODUCT_SALLES(idEmployee)
FROM EMPLOYEE@

CREATE FUNCTION GET_PRODUCTS_SUPPLIED_FROM(idSupp Int)
RETURNS TABLE (supplerName VARCHAR(255),
			   productName VARCHAR(255),
			   price DOUBLE)
RETURN 
 SELECT supplier.name,product.name,product.price
 FROM SUPPLIER,SUPPLIES,PRODUCT
 WHERE Supplier.idSupplier = Supplies.idSupplier AND 
 	   Supplies.idProduct = product.idProduct AND
 	   Supplier.idSupplier = idSupp@
 
SELECT * FROM TABLE (fn45297.GET_PRODUCTS_SUPPLIED_FROM(2)) T@

               
