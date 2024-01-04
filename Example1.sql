CREATE TABLE Student
(
  studentId      VARCHAR(10),
  name           VARCHAR(10),
  address        VARCHAR(2),
  age            INTEGER,
  gpa            REAL,
  PRIMARY KEY    (studentId)
);

CREATE TABLE Grade
 (
   subjectId    VARCHAR(4),
   studentId    VARCHAR(10),
   grade        VARCHAR(2),
   PRIMARY KEY (subjectId, studentId),
   FOREIGN KEY (studentId) REFERENCES Student
 );

 INSERT INTO Student VALUES('1234A','Sandaru','AB',21,3.1),
                           ('2345B','Bhanuka','CD',25,3.5),
						   ('6789D','Dilina','EF',20,3.9);