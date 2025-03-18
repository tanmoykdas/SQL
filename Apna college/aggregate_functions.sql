use university;
/*get university database in basic_queries.sql file*/
select max(marks)
from student;

select min(marks)
from student;

select count(namr)
from student;

select avg(marks)
from student;

select sum(marks)
from student;

select city 
from student 
group by city;

select city, count(namr)
from student 
group by city;