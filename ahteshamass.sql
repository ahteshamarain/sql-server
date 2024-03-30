create database CompanyDB;
use CompanyDB;

create table Employee(
Employeeid int primary key,
Firstname varchar(255),
Lastname varchar(255),
salary decimal(38),
Departmentid int not null,
foreign key (Departmentid) references Department(Departmentid)
);
ALTER TABLE Employee ADD HireDate DATETIME;
INSERT INTO Employee(Employeeid,Firstname,Lastname,salary,HireDate,Departmentid) values(2,'Hanif','khan',60000,2,2),
(3,'hammad','chourdry',46000,6,3),
(4,'muez','choudry',55000,16,4),
(5,'shaheer','musani',50.50,19,5),
(6,'zubair','pagl',39000,29,5),
(7,'zunaira','nafsiyati',60000,3,3),
(8,'zaheer','memon',20000,9,2),
(9,'amir','khan',65000,11,1),
(10,'naseem','pakhtoon',56000,18,4);




create table Department(
Departmentid int primary key,
Departmentname varchar(255)

);

INSERT INTO Department(Departmentid,Departmentname) values(6,'developer'),(7,'designer'),(8,'painter');

select * from Department;
select * from Employee;

UPDATE Employee SET Salary = Salary * 1.10 WHERE DepartmentID = 1;
DELETE FROM Employee WHERE salary < 30000; 

SELECT * FROM Employee AS E INNER JOIN Department AS D ON D.Departmentid = E.Departmentid; 
SELECT Firstname,Lastname,Departmentname,salary FROM Employee AS E INNER JOIN Department AS D ON D.Departmentid = E.Departmentid; 
SELECT * FROM Employee AS E LEFT JOIN Department AS D ON D.Departmentid = E.Departmentid; 
SELECT * FROM Employee AS E RIGHT JOIN Department AS D ON D.Departmentid = E.Departmentid; 
SELECT * FROM Employee AS E INNER JOIN Department AS D ON D.Departmentid = E.Departmentid where employeeid = 3; 
SELECT Firstname,Lastname,HireDate FROM Employee where HireDate = 3; 


