use university;
show tables;
select * from student;

select city, avg(marks) 
from student
where marks not between 80 and 90 and city != 'Delhi'
group by city
order by city asc;