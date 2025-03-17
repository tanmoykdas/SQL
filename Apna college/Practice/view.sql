use university;
show tables;

select * from student;

create view v1 as
select namr, rollno 
from student;

select * from v1;