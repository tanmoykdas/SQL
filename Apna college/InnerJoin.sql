create database if not exists bijoy24;
use bijoy24;
drop table student;
create table student (
id int primary key,
faculty varchar(20)
);
drop table info;
create table info (
stu_id int,
name varchar(20)
);

insert into student (id, faculty) values (101, 'cse'), (102, 'agri'), (103, 'nfs'), (104, 'bba');
insert into info (stu_id, name) values (101, 'tanmoy'), (102, 'riyad'), (103, 'sanjid'), (104, 'aninda');
select * from student;
select * from info;
-- inner join
select id, name, faculty
from student
inner join info
on id = stu_id;

insert into student values (108, 'dvm'), (110, 'lla');
insert into info (stu_id, name) values (106, 'prosen'), (107, 'lala');

-- left join
select * 
from student
left join info 
on id = stu_id;

-- right join

select * 
from student
right join info 
on id = stu_id;

-- full join

select * 
from student as a
left join info as b
on a.id = b.stu_id
union
select *
from student as a
right join info as b
on a.id = b.stu_id;

-- left exclusive join

select * from student 
inner join info
on student.id = info.stu_id
where info.stu_id = null;

-- right exclusive join 

select * from student 
inner join info
on student.id = info.stu_id
where student.id = null;

-- self join
create table if not exists employee (
id int primary key,
name varchar(10),
manager_id int
);
insert into employee values (101, 'bob', 102), (102, 'cassey', 101), (103,'donald', 102);
select * from employee;

SELECT a.name AS employee_name, 
       b.name AS manager_name
FROM employee AS a
JOIN employee AS b ON a.manager_id = b.id;