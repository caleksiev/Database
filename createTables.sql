SET SCHEMA fn45297;

--- CREATE TABLES ---

--Product (idProduct, name, price, description, VAT, size, stock)
--Electrical (idProduct, capacity, power, turnover )
--Garden (idProduct, color, material)
--Home (idProduct, color, material)
--Employee (idEmployee, name, phone, address, salary)
--Client (idClient, name, phone, address)
--Purchase (idPurchase, idClient, idProduct, idEmployee, data, amount, gTotal, nTotal)
--Supplier (idSupplier, name, company)
--Supplies (idSupplies, idSupplier, idProduct, amount, deliveryPrice)


CREATE TABLE PRODUCT (
 idProduct INT NOT NULL PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 price DOUBLE NOT NULL,
 description VARCHAR(255) DEFAULT 'No description',
 VAT DOUBLE,
 stock CHAR(1) CHECK ( stock in ('Y','N')) DEFAULT 'Y',
 size INT
 );
 
CREATE TABLE ELECTRICAL(
 idElec Int NOT NULL PRIMARY KEY REFERENCES PRODUCT(idProduct),
 capacity Int,
 power Int,
 turnover Int
 );
 
CREATE TABLE GARDEN(
 idGarden Int NOT NULL PRIMARY KEY REFERENCES PRODUCT(idProduct),
 color Char(10),
 material Char(10)
 );

CREATE TABLE HOME(
 idHome Int NOT NULL PRIMARY KEY REFERENCES PRODUCT(idProduct),
 color Char(10),
 material Char(10)
 );

CREATE TABLE EMPLOYEE(
 idEmployee INT NOT NULL PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 address VARCHAR(255),
 salary DOUBLE NOT NULL,
 phone Char(20)
 );
 
CREATE TABLE CLIENT(
 idClient INT NOT NULL PRIMARY KEY,
 name VARCHAR(255) ,
 address VARCHAR(255),
 phone Char(20)
 );

CREATE TABLE PURCHASE(
 idPurchase INT NOT NULL  GENERATED ALWAYS AS IDENTITY 
 	(START  WITH 1, INCREMENT BY 1),
 PRIMARY KEY (idPurchase),
 idCLient INT NOT NULL REFERENCES CLIENT(idClient),
 idEmployee INT NOT NULL REFERENCES EMPLOYEE(idEmployee),
 idProduct INT NOT NULL REFERENCES PRODUCT(idProduct),
 dataP DATE DEFAULT CURRENT_DATE,
 amount INT NOT NULL,
 gTotal INT,
 nTotal INT
 );
 
CREATE TABLE SUPPLIER(
 idSupplier INT NOT NULL PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 company VARCHAR(255)
 );
 
CREATE TABLE SUPPLIES(
 idSupplies INT NOT NULL GENERATED ALWAYS AS IDENTITY
 	(START with 1, INCREMENT BY 1),
 PRIMARY KEY(idSupplies),
 idSupplier INT NOT NULL REFERENCES SUPPLIER(idSupplier),
 idProduct INT NOT NULL REFERENCES PRODUCT(idProduct),
 amount INT NOT NULL,
 deliveryPrice DOUBLE NOT NULL
 );
 

 
 
