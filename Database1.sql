CREATE TABLE Bank
(
  code                 CHAR(5),
  name                 VARCHAR(50),
  registration         VARCHAR(20),
  PRIMARY KEY (code)
);

CREATE TABLE Branch
(
  code                 CHAR(5),
  branch_number        INTEGER,
  name                 VARCHAR(25),
  address              VARCHAR(50),
  PRIMARY KEY (code,branch_Number),
  FOREIGN KEY(code) REFERENCES Bank
);

CREATE TABLE Account_Type
(
  code                 CHAR(5),
  name                 VARCHAR(25),
  interest_rate        FLOAT,
  description          VARCHAR(50),
  PRIMARY KEY (code)
);

CREATE TABLE Account
(
  accountno            CHAR(10),
  balance              FLOAT,
  bcode                CHAR(5),
  bnumber              INTEGER,
  atype                CHAR(5),
  PRIMARY KEY (accountno),
  FOREIGN KEY (bcode,bnumber) REFERENCES Branch,
  FOREIGN KEY (atype) REFERENCES Account_Type
);

CREATE TABLE Customer
(
  number               CHAR(10),
  nic                  CHAR(10),
  name                 VARCHAR(75),
  address              VARCHAR(50),
  phone				   VARCHAR(15),
  PRIMARY KEY (number)
);

CREATE TABLE Belongs
(
  cnumber              CHAR(10),
  anumber              CHAR(10),
  PRIMARY KEY (cnumber,anumber),
  FOREIGN KEY (anumber) REFERENCES Account
);

CREATE TABLE Transactions
(
  tid                  INTEGER,
  type                 VARCHAR(10),
  date_time            DATETIME,
  amount               FLOAT,
  via                  VARCHAR(10),
  anumber              CHAR(10),
  description          VARCHAR(25),
  PRIMARY KEY (tid),
  FOREIGN KEY (anumber) REFERENCES Account
);

