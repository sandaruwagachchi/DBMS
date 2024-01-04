CREATE TABLE Department
(
  dno          CHAR(5),
  dname        CHAR(4),
  location     CHAR(15),
  PRIMARY KEY (dno)
);

CREATE TABLE Employee
(
  eid           CHAR(5),
  ename         CHAR(10),
  salary        REAL,
  deptNo        CHAR(5),
  PRIMARY KEY (eid),
  FOREIGN KEY (deptno) REFERENCES Department
);

INSERT INTO Department VALUES ('A0001','aaaa','Colombo'),
                               ('A0002','bbbb','Kandy'),
							   ('A0003','cccc','Kurunagala'),
							   ('A0004','dddd','Kasbewa');

INSERT INTO Employee VALUES ('E1101','Kamal',15000.0,'A0001'),
                            ('E1102','Nimal',16000.0,'A0001'),
							('E1103','Kasun',17000.0,'A0002'),
							('E1104','Gayan',18000.0,'A0002'),
							('E1105','Lakmal',19000.0,'A0003');

//display name of all employee

SELECT    ename
FROM      Employee

//select name of employee working in the department

SELECT ename
FROM   Employee
WHERE deptno='A0001'

//display name and salary  of all employee

SELECT salary,ename
FROM Employee

//Display name and salary of employee 'E1103'

SELECT ename,salary
FROM Employee
WHERE eid='E1103'


//Display employee id ,employee name salary and department no of all employee

SELECT *
FROM Employee

//display all the details of all 'E1104'

SELECT *
FROM Employee
WHERE eid='E1104'

//Display  all he department numbers use the employee table

SELECT deptNo                         
FROM Employee

//list all the department names which are colombo

SELECT dname
FROM Department
WHERE location='Colombo'

//list all the department names which are in colombo or kandy

SELECT dname
FROM Department
WHERE location='Colombo'OR location='Kandy'

//list all employee names who are in department 'A0001' and salary greather than 10000.0

SELECT ename
FROM Employee
WHERE deptNo='A0001'AND salary>10000.0

//list the employee information with their department details who are working in department

SELECT *
FROM Employee,Department

SELECT *
FROM Employee,Department
WHERE deptNo=dno


SELECT ename AS EmployeeName,
       dname AS DepartmentName
FROM Employee,Department
WHERE deptNo=dno

SELECT ename
FROM Employee
WHERE ename LIKE 'K%'

SELECT dname
FROM Department
WHERE location IN ('Colombo','Kandy')

SELECT dname
FROM Department
WHERE location NOT IN ('Colombo','Kandy')

SELECT ename
FROM employee
WHERE salary BETWEEN 16000 AND 18000

SELECT *
FROM Employee
ORDER BY salary

SELECT *
FROM Employee
ORDER BY salary DESC

INSERT INTO Employee VALUES('E1106','Bhanuka',20000.0,'A0002'),
                           ('E1107','Sandaru',21000.0,'A0001');

SELECT *
FROM Employee
ORDER BY salary DESC

SELECT eid,ename,salary
FROM Employee
ORDER BY salary DESC,deptNo ASC

SELECT SUM(salary)AS TotalSalary
FROM Employee

SELECT MIN(salary)
FROM Employee

SELECT max(salary)
FROM Employee

SELECT count(*)
FROM Employee


SELECT SUM(salary)AS Total,MIN(salary)AS Minimum,AVG(salary)AS Avarage
FROM Employee


SELECT COUNT(DISTINCT salary)
FROM Employee

