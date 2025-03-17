use university;
select * from student;
set sql_safe_updates = 0;

update student
set grade = 'Z'
where marks > 80;

select * from student;

update student 
set marks = 92
where rollno = 105;

alter table student 
modify grade varchar(10);

update student
set grade = 'A+'
where marks >= 80;

update student
set grade = 'A'
where marks >= 70 and marks <= 79;

update student
set grade = 'A-'
where marks >= 60 and marks <= 69;

update student
set grade = 'B'
where marks >= 50 and marks <= 59;

update student
set grade = 'C'
where marks >= 40 and marks <= 49;

update student
set grade = 'D'
where marks >= 33 and marks <= 39;

update student
set grade = 'F'
where marks <= 33;

select * from student;

delete from student 
where rollno = 101;
drop table dept;
create table dept (
id int primary key,
dept_name varchar(20)
);

drop table teacher;
create table teacher (
id int primary key,
name varchar(20),
dept_id int,
foreign key(dept_id) references dept(id)
on update cascade
on delete cascade
);

insert into dept values (101, 'Bangla'), (102, 'English'), (103, 'Math');
insert into teacher values (1, 'Anil', 102), (2, 'Subir', 101), (3, 'Dhruv', 103), (4, 'Shanti', 103);

select * from dept;
select * from teacher;

update dept
set id = 104
where id = 102;

delete from teacher
where id = 1;

alter table student
add column age int;

alter table student
add column age int default 19;
alter table student
drop column age;
select * from student;

alter table student
rename to stu;

select * from stu;

alter table stu
rename to student;