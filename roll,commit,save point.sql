CREATE TABLE EMP(
   FIRST_NAME CHAR(20) NOT NULL,
   LAST_NAME CHAR(20),
   AGE INT,
   SEX CHAR(1),
   INCOME FLOAT);
truncate emp;
start transaction;
   INSERT INTO EMP VALUES
('Krishna', 'Sharma', 19, 'M', 2000),
('Raj', 'Kandukuri', 20, 'M', 7000),
('Ramya', 'Ramapriya', 25, 'F', 5000);

savepoint s1;
select *from emp;
 INSERT INTO EMP VALUES
('Krish', 'Sharmila', 21, 'F', 6000);
rollback to savepoint s1;
select *from emp;
commit;

select * from student;

start transaction;
insert into student values(5,'basil','2025-02-20',56,'pass');
savepoint sp1;
update student set mark=58 where id=4;
rollback to sp1;
commit;

select *from student_score;
start transaction;
insert into student_score values('duude', 65,10,0);
savepoint sp2;
insert into student_score values ('dani',67,10,77);
rollback  to sp2;
select *from student_score;
select *from players;
insert into players values(3,'yamal',19);
savepoint sp5;
insert into players values(4,'gavi',6);
commit;
rollback to sp5;

