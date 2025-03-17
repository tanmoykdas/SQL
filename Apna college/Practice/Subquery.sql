use university;
show tables;
select * from student;

/*show student name where student have marks greater than class avarage*/

select namr
from student
where marks > (select avg(marks) from student);

select namr
from student 
where rollno % 2 = 0;

select namr, rollno
from student 
where rollno in (
select rollno
where rollno % 2 = 0
);

select max(marks) 
from student
where city = 'Delhi';

select namr 
from student 
where ( (select max(marks) from student where city = 'Delhi') = marks);