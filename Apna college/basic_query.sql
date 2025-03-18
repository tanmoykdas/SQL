create database if not exists university;
use university;

create table if not exists student (
rollno int primary key,
namr varchar(20),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student values (101, "anil", 78, 'C', "Pune");
insert into student values (102, "bhumika", 93, 'A', "Mumbai");
insert into student values (103, "chetan", 85, 'B', "Mumbai");
insert into student values (104, "dhruv", 96, 'A', "Delhi");
insert into student values (105, "emanuel", 12, 'F', "Delhi");
insert into student values (106, "farah", 82, 'B', "Delhi");

select * from student;
select namr,grade from student;

select namr, marks, city
from student 
where marks > 80;

select namr, marks, city
from student 
where marks > 80 and city = 'Mumbai';

select *
from student 
where marks between 80 and 90;

select *
from student 
where city in('Mumbai', 'Delhi');

select *
from student 
where marks > 80 or city = 'Delhi';

select *
from student 
where marks not between 80 and 90;

select *
from student 
where city not in('Mumbai', 'Delhi');

select * from student 
order by marks desc
limit 1;