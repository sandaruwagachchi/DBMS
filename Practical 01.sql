CREATE TABLE Customer
(
  CustomerId      CHAR(2)CHECK(CustomerId LIKE 'C%'),
  cName           CHAR(10) NOT NULL,
  cAddress        CHAR(10) NOT NULL,
  cTelephone      INTEGER NOT NULL,
  PRIMARY KEY (CustomerId)
);

CREATE TABLE Orders
(
  orderId          CHAR(2)CHECK(orderId LIKE 'O%'),
  cId              CHAR(2),
  orderDate        DATE Default getdate(),
  total            DECIMAL(8,2),
  PRIMARY KEY (orderId),
  FOREIGN KEY (cId) REFERENCES Customer 
  );

  CREATE TABLE Supplier
  (
    supplierId     CHAR(2)CHECK(supplierId LIKE 'S%'),
	sName          CHAR(10) NOT NULL,
	sAddress       CHAR(10) NOT NULL,
	sTelephone     INTEGER,
	PRIMARY KEY(supplierId)
	);

  CREATE TABLE Product
  (
    prodId         CHAR(2)CHECK(prodId LIKE 'P%'),
	productName    CHAR(10) NOT NULL,
	unitPrice      DECIMAL NOT NULL,
	supId          CHAR(2),
	PRIMARY KEY (prodId),
	FOREIGN KEY (supId) REFERENCES Supplier
	);
  

  CREATE TABLE OrderItem
  (
    RECID          CHAR(2)CHECK (RECID LIKE 'R%'),
	orderId        CHAR(2),
	prodId         CHAR(2),
	unitPrice      DECIMAL(5,2),
	quantity       INTEGER,
	PRIMARY KEY (RECID),
	FOREIGN KEY (orderId) REFERENCES Orders,
	FOREIGN KEY (prodId) REFERENCES Product
	);
  
  INSERT INTO Customer VALUES ('C1','Amali','Colombo',0772569014),
                              ('C2','Asanka','Colombo',0715469875),
							  ('C3','Sunil','Kandy',0772548921),
							  ('C4','Kasun','Galle',0714589756),
							  ('C5', 'Pathum','Matara', 0784589415);

  
  INSERT INTO Supplier VALUES('S1','Perera','Colombo',0712569014),
                             ('S2', 'Silva', 'Matara', 0765469875),
                              ('S3', 'Ferenando', 'Jaffna', 0782548921),
                              ('S4', 'Damika', 'Gampha', 0774589756),
                              ('S5', 'Darshana', 'Gampola', 0784589415);

  INSERT INTO Orders(orderid,cId,total) VALUES('O1', 'C1',8500.00),
                                              ('O2', 'C1',9750.00),
                                              ('O3', 'C2',1500.00),
                                              ('O4' ,'C3',27000.50),
                                              ('O5', 'C4',48252.00);

  INSERT INTO Product VALUES ('P1','MilkPacket',35.00,'S1'),
                             ('P2','Yoghurt',30.00,'S1'),
                             ('P3','Oats',475.00,'S2'),
                             ('P4','Corn Flex',890.00,'S3'),
                             ('P5','Cheese',1200.00,'S2');

  INSERT INTO OrderItem VALUES ('R1','O1','P1',35.00,100),
                               ('R2','O1','P2',30.00,166),
                               ('R3','O2','P2',30.00,100),
                               ('R4','O2','P3',475.00,14),
                               ('R5','O3','P1',35.00,43); 


  SELECT cName
  FROM Customer
  WHERE cAddress='Colombo' OR cAddress='Kandy'

  SELECT cName,cAddress
  FROM CUSTOMER
  WHERE cname LIKE 'A%'

  SELECT cName
  FROM Customer
  WHERE cName LIKE 'S%' AND cAddress='Kandy'

  SELECT cName
  FROM Customer
  ORDER BY cName ASC

  SELECT *
  FROM Orders
  WHERE total>5000

  SELECT *
  FROM Orders
  WHERE total BETWEEN 15000 AND 30000