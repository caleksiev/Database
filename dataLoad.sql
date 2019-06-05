SET SCHEMA FN45297;

--INTO PRODUCT

INSERT INTO Product (idProduct, name, price)--description,VAT,stock,size)
  VALUES (0001, 'Fridge', 1200.49);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0002, 'Mixer', 100.10);
  
INSERT INTO Product (idProduct, name, price,size)
  VALUES (0003, 'Basin', 6.89,54);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0004, 'Basin', 10.00);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0005, 'Basin', 10.00);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0006, 'Spoons', 12.19);
  
INSERT INTO Product (idProduct, name, price,size)
  VALUES (0007, 'Spoons', 12.19,12); 
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0008, 'Pot', 3.45);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0009, 'Pot', 4.00);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0010, 'Electric kettle', 26.19);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0011, 'Bucket', 10.00);
  
INSERT INTO Product (idProduct, name, price,size)
  VALUES (0012, 'Bucket', 12.00,60);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0013, 'Garden shovel', 20.99);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0014, 'Garden cart', 25.99);
  
INSERT INTO Product (idProduct, name, price,size)
  VALUES (0015, 'Plates', 10.99,6);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0016, 'Drawer',19.00 );
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0017, 'Hair dryer',36.99);
 
INSERT INTO Product (idProduct, name, price)
  VALUES (0018, 'Dryer',07.99);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0019, 'Ironing boardr',14.99);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0020, 'Iron',20.99);
  
INSERT INTO Product (idProduct, name, price,size)
  VALUES (0021, 'Fertilizer',09.99,1);
  
INSERT INTO Product (idProduct, name, price,size)
  VALUES (0022, 'Fertilizer',04.99,0.5);
  
INSERT INTO Product (idProduct, name, price)
  VALUES (0023, 'Bench',6.99); 
  
 --INTO ISA PRODUCT
 --GARDEN
   
INSERT INTO GARDEN (idGarden,color)
  VALUES (13,'black');
  
INSERT INTO GARDEN (idGarden,color)
  VALUES (0014,'black');
  
INSERT INTO GARDEN (idGarden,material)
  VALUES (0021,'ordure');
  
INSERT INTO GARDEN (idGarden,material)
  VALUES (0022,'ordure');
  
INSERT INTO GARDEN (idGarden,material)
  VALUES (0023,'wood');
  
INSERT INTO GARDEN (idGarden,material)
  VALUES (0008,'plastic');
  
  
INSERT INTO GARDEN (idGarden,material)
  VALUES (0009,'plastic');
  
--HOME

INSERT INTO HOME (idHome,color,material)
  VALUES (0003,'black','plastic');

  
INSERT INTO HOME (idHome,color,material)
  VALUES (0004,'red','plastic');
  
INSERT INTO HOME (idHome,color,material)
  VALUES (0005,'orange','plastic');

INSERT INTO HOME (idHome,color,material)
  VALUES (0006,'silver','metal');
  
INSERT INTO HOME (idHome,color,material)
  VALUES (0007,'silver','metal');
  
INSERT INTO HOME (idHome,color,material)
  VALUES (0011,'blue','plastic');
  
INSERT INTO HOME (idHome,color,material)
  VALUES (0012,'red','plastic');
  
  
INSERT INTO HOME (idHome,color,material)
  VALUES (0015,'white','glass');
  
INSERT INTO HOME (idHome,color,material)
  VALUES (0016,'brown','wood');
  
INSERT INTO HOME (idHome,color,material)
  VALUES (0018,'white','iron');
  
INSERT INTO HOME (idHome,color,material)
  VALUES (0019,'black','iron');

--ELECTRICITY

INSERT INTO ELECTRICAL (idElec,capacity,power,turnover)
  VALUES (0001,12,34,67);
  
INSERT INTO ELECTRICAL (idElec,capacity,power,turnover)
  VALUES (0002,89,34,5);
  
INSERT INTO ELECTRICAL (idElec,capacity,power,turnover)
  VALUES (0010,99,4,5);
  
INSERT INTO ELECTRICAL (idElec,capacity,power,turnover)
  VALUES (0017,99,34,89);
  
INSERT INTO ELECTRICAL (idElec,capacity,power,turnover)
  VALUES (0020,9,7,12);
  
  --INSERT INOT EMPLOYEE
  
  
INSERT INTO EMPLOYEE (idEmployee,name,salary)
  VALUES (0001,'Ivan Ivanov',780.00);
  
INSERT INTO EMPLOYEE (idEmployee,name,salary,phone)
  VALUES (0002,'Georgi Georgiev',700.00,'0987654389');
  
INSERT INTO EMPLOYEE (idEmployee,name,salary,address)
  VALUES (0003,'Milko Ivanov',680.00,'blvd Gradina 11-1e');
  
INSERT INTO EMPLOYEE (idEmployee,name,salary,phone,address)
  VALUES (0004,'Grigor Dimitrov',1000.00,'0988765467','ul.Dimitur Petkov 78-99');
  
INSERT INTO EMPLOYEE (idEmployee,name,salary)
  VALUES (0005,'Dimitur Uzunov',888.00);
  
INSERT INTO EMPLOYEE (idEmployee,name,salary)
  VALUES (0006,'Ivo Georgiev',699.00);
  
INSERT INTO EMPLOYEE (idEmployee,name,salary,address)
  VALUES (0007,'Iveta Aleksieva',450.00,'blv Vitosha 7-9');
  

--INSERT INTO CLIENT

INSERT INTO Client (idClient,name)
  VALUES (0001,'Regular client');
  
INSERT INTO Client (idClient,name,address,phone)
  VALUES (0002,'Mebelna kushta Dark','blv Dragan Tsankov 12','0256373738');
  
INSERT INTO Client (idClient,name,address,phone)
  VALUES (0003,'MTM art','blvd Tsar Boris 3','09898765412');
  
INSERT INTO Client (idClient,name,address)
  VALUES (0004,'Videnov','ul.Graf Ignatiev 7');
    
 --INSERT INTO SUPPLIER
 
INSERT INTO Supplier (idSupplier,name,company)
  VALUES (0001,'Dimitur Popov','DarkMotiv EOOD');
  
INSERT INTO Supplier (idSupplier,name,company)
  VALUES (0002,'Iva Etimova','Milenium OOD');
  
INSERT INTO Supplier (idSupplier,name,company)
  VALUES (0003,'Dragan Ivanov','Sapfir EOOD');
  
INSERT INTO Supplier (idSupplier,name,company)
  VALUES (0004,'Kirirl Methodiev','Milenuim ET');
  
INSERT INTO Supplier (idSupplier,name,company)
  VALUES (0005,'Flora Tihomirova','MTM pod ET');
  
  
--INSERT INTO SUPPLIES
  
INSERT INTO Supplies(idSupplier,idProduct,amount,deliveryPrice)
   VALUES (2,1,1,900);
   
INSERT INTO Supplies(idSupplier,idProduct,amount,deliveryPrice)
   VALUES (1,8,1,2.00);
   
INSERT INTO Supplies(idSupplier,idProduct,amount,deliveryPrice)
   VALUES (3,17,1,30.99);
   
INSERT INTO Supplies(idSupplier,idProduct,amount,deliveryPrice)
   VALUES (4,10,1,20.12);
   
INSERT INTO Supplies(idSupplier,idProduct,amount,deliveryPrice)
   VALUES (5,11,1,5.90);
   
--INSERT INTO PURCHASE
  
 
INSERT INTO Purchase(idClient,idEmployee,idProduct,amount)
   VALUES (1,2,1,1);

   
INSERT INTO Purchase(idClient,idEmployee,idProduct,amount)
   VALUES (1,3,7,1);
   
   
INSERT INTO Purchase(idClient,idEmployee,idProduct,amount)
   VALUES (2,1,8,1);
   
   
 INSERT INTO Purchase(idClient,idEmployee,idProduct,amount)
   VALUES (1,2,9,1);
  
INSERT INTO Purchase(idClient,idEmployee,idProduct,amount)
   VALUES (1,4,12,1);
  
INSERT INTO Purchase(idClient,idEmployee,idProduct,amount)
   VALUES (1,6,23,1);