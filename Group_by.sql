--Group by function used to create unique partition based on the column mentioned in the group by clause
--Group by function create unique buckets for the values in the group by mentioned column
--Null is also treated as unique value and will be one partition
--All the null values on the group by column will be in a same partition

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


--If we want to find the number of records for all the dept 
--We can use group by function based on dept column which create buckets on unique dept value and using count()
--we can find the dept wise record count
select dept,count(*) 
from dept 
GROUP BY dept;
--The above query creates partition for each unique values and finds the record count
--Here dept hr and HR are treated as different parition as sql engine treats the value as case sensitive
--Also we can see one bucket

--To solve the above issue we can use upper function in the group by
--which treates hr and HR as the same value after converting both into upper case
select UPPER(dept),count(*) 
from dept 
GROUP BY UPPER(dept);






