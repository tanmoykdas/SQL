create database if not exists xyz;
use xyz;
use college;
drop table if exists employee;
create table employee(
id int primary key,
name varchar(50),
salary float
);

select * from employee;

insert into employee values(1, "adam", 25000);
insert into employee (id, name, salary) values (2, "bob", 30000);
insert into employee (name, id, salary) values ("casey", 3, 40000);

select * from employee;