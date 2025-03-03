use basi;

create table me (name char(30),
no int)
select* from me;
select * from mobiles;
describe mobiles;
select *from `online shopping`;

select * from `online shopping` right join mobiles on `online shopping`.`online shopping`=mobiles.`online shopping`;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2));
    
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID, Salary) VALUES
(1, 'Alice', 1, 70000),
(2, 'Bob', 2, 60000),
(3, 'Carol', 3, 80000),
(4, 'Dave', 2, 75000),
(5, 'Eve', 1, 72000);
    
    CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50));
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');
select * from Departments;
select * from  Employees;
insert into Employees values
(6,"David",5,65000);

select * from Employees join Departments on Employees.DepartmentID=Departments.DepartmentID;
select * from Employees inner join Departments on Employees.DepartmentID=Departments.DepartmentID;
select * from Employees  e left join Departments d on e.DepartmentID=d.DepartmentID; 
select * from Employees  e right join Departments d on e.DepartmentID=d.DepartmentID; 
select * from Employees  cross join Departments; 

select * from Employees  e left join Departments d on e.DepartmentID=d.DepartmentID
union 
select * from Employees  e right join Departments d on e.DepartmentID=d.DepartmentID;

select * from Employees  e left join Departments d on e.DepartmentID=d.DepartmentID
union
select * from Employees  e right join Departments d on e.DepartmentID=d.DepartmentID;