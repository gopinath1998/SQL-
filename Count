Create table Dept(Empid number,Empname varchar2(10),Dept varchar2(10),Location varchar(50));
insert into dept values(1,'A','HR','Delhi');--
insert into dept values(2,'B','HR','Delhi');--
insert into dept values(3,'C','SALES','Delhi');
insert into dept values(4,'D','SALES','Chennai');
insert into dept values(5,'E','SALES','Chennai');
insert into dept values(6,'F',NULL,'Chennai');
insert into dept values(7,'G',NULL,'Delhi');
insert into dept values(1,'A','HR','Chennai');
insert into dept values(2,'B','HR','Bangalore');
insert into dept values(8,'j','hr','Delhi');


select * from dept;
select count(*)-count(Dept) as null_count from dept;
--count(*) counts all the records the column
--count(column_name) count not null recrods

select count(*) from dept where location = 'Delhi' and upper(dept)='HR';--3
select count(*) from dept where location = 'Delhi' and upper(dept)='SALES';--1
select count(*) from dept where location = 'Delhi' and upper(dept) IN ('SALES','HR');--4
