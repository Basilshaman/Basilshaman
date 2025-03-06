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
delimiter //
create procedure ed()
begin
	select * from Employees join Departments on Employees.DepartmentID=Departments.DepartmentID;
end //
delimiter ;

call ed();

create table student(
id int  auto_increment,
s_name varchar(30) not null,
place varchar(30) not null,
class int,
s_status varchar(30) default "PASS",
mark int,
check (mark>=45),
primary key(id));
select * from student;
select * from sdt;

create table sdt(
s_id int,
namee varchar(30) not null,
place varchar(30) not null,
email varchar(50) unique,
constraint fk_id foreign key (s_id) references student(id));
insert into student (id,s_name,place,class,mark)values(
50001,'dude','kottayam',9,47),
(50002, 'denny','kollam',3,56),
(50003,'dominik','kannur',8,45);
insert into student(s_name,place,class,mark)values(
'benny','malappuram',8,57),
('dominik','calicut',9,99);
insert into sdt  values (50001,'dude','kottayam','abcd@gmail.com'),
(50003,'dominik','kannur','abcd@outlook.com'),(50005,'dominik','calicut','abce@gmail.com');

use sakila;
select * from film;

create view film_view as
select film_id,title,release_year, rental_rate,replacement_cost,rating from film;
select * from film_view;

select * from film_view where title like '%R';
select * from film_view where rating='PG';
select count(distinct title)from film where replacement_cost>20 and title like 'A%' ;
select count(distinct title)from film where replacement_cost>20 or title like 'A%' ;
select * from film_view where replacement_cost between 15 and 20;
