--Having clause can be used to filter the results based on the aggregated values 
--like count(),min(),max(),sum(),avg()
--where clause cannot be used to filter the  aggregated values 

--The above query filters the record which has more than one record
select dept,count(*) 
from dept 
GROUP BY dept
having count(*) >1;


--The belowe query is used to filter the dept which has sum of empid more than value 1
select dept,sum(empid) 
from dept 
GROUP BY dept
having sum(empid) >1;
