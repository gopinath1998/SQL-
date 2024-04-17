drop table dept;

Create table Dept(Empid number,Empname varchar2(10),Dept varchar2(10),Location varchar(50));
insert into dept values(1,'A','HR','Delhi');
insert into dept values(2,'B','HR','Delhi');
insert into dept values(3,'C','SALES','Delhi');
insert into dept values(4,'D','SALES','Chennai');
insert into dept values(5,'E','SALES','Chennai');
insert into dept values(6,'F',NULL,'Chennai');
insert into dept values(7,'G',NULL,'Delhi');
insert into dept values(1,'A','HR','Chennai');
insert into dept values(2,'B','HR','Bangalore');
insert into dept values(8,'j','hr','Delhi');

--Group by used to create unique partition based on group by value given
--count() using group by helps us getting count for each individual partitions
select UPPER(DEPT),count(*) 
from dept 
where location = 'Delhi' and upper(dept) IN ('SALES','HR') 
GROUP BY UPPER(dept);

--Below query will throw an error message because we are using alias in the group by clause
--This because group by evaluates before select select clause where alias is created.
select UPPER(DEPT) as DEPT_NAME,count(*) 
from dept 
where location = 'Delhi' and upper(dept) IN ('SALES','HR') 
GROUP BYDEPT_NAME;
