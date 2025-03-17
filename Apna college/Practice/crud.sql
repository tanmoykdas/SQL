create database college;

use college;

create table student (
id int primary key,
name varchar(50),
age int not null
);

insert into student values(1, "tanmoy", 23);
insert into student values(2, "jubayer", 22);

insert into student (id, age, name) values (3, 23, "luka");

select * from student;

create database if not exists college;
create database if not exists university;
drop database if exists university;

show databases;
use sys;
use college;
show tables;