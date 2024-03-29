create table student(
  name varchar(50),
  age int);

insert into student values('Gopi',25);
insert into student values('Gopi',26);
insert into student values('Gopi',24);
insert into student values('Sandhiya',23);

--Order by clause sorts/orders the result set from the select clause based on condition by desc or asc
--Defalut order by clause is asc
select name , age
from student
order by name desc;

--We can sort the result set based on multiple columns in different orders
--In the below queries result are first sorted based on name in the based on mentioned order
--if there is multiple age values for the same name value it will sort the age in the mentioned order for that specific name

select name , age
from student
order by name desc,age asc;

select name , age
from student
order by name ,age desc;

select name , age
from student
order by name ,age ;

select name , age
from student
order by name desc,age desc;
