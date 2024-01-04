CREATE TABLE Company
(
  cname        CHAR(12),
  stockPrice   INTEGER,
  country      CHAR(10),
  PRIMARY KEY (cname)
);


CREATE TABLE Product
(
  pname        CHAR(15),
  price        REAL,
  category     CHAR(15),
  manufacturer CHAR(12),
  PRIMARY KEY (pname),
  FOREIGN KEY (manufacturer) REFERENCES Company
);

INSERT INTO Company VALUES ('GizmoWorks', 25, 'USA'),
                           ('Canon', 65, 'Japan'),
						   ('Hitachi', 15, 'Japan');


INSERT INTO Product VALUES ('Gizmo', 19.99, 'Gadgets', 'GizmoWorks'),
                           ('PowerGizmo', 29.99, 'Gadgets', 'GizmoWorks'),
						   ('SingleTouch',149.99, 'Photography', 'Canon'),
						   ('MultiTouch', 203.99, 'Household', 'Hitachi');

  //find all product under 200 manufactured in japan.print their name and prices.

  SELECT DISTINCT pname,price
  FROM Product,Company
  WHERE  country='Japan' AND price<200 AND cname=manufacturer