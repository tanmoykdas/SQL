-- write query to find varage of each city in ascending order

use university;

select city, avg(marks)
from student
group by city
order by avg(marks) asc;

-- for the given table find the total payment acroding to each payment methode
create database if not exists employee;
use employee;
create table if not exists payment (
coustomer_id int primary key,
coustomer varchar(20),
mode varchar(20),
city varchar(10)
);

insert into payment values ('101', 'rupa', 'netbanking', 'poland');
insert into payment values ('102', 'harish', 'credit card', 'miami');
insert into payment values ('103', 'govind', 'credit card', 'brazil');
insert into payment values ('104', 'gopal', 'netbanking', 'poland');
insert into payment values ('105', 'sreya', 'credit card', 'usa');
insert into payment values ('106', 'arpita', 'debit card', 'uk');
insert into payment values ('107', 'nuha', 'debit card', 'bangladesh');
insert into payment values ('108', 'mim', 'netbanking', 'usa');
insert into payment values ('109', 'abdullah', 'netbanking', 'bangladesh');
insert into payment values ('110', 'bashar', 'credit card', 'usa');

select * from payment
order by coustomer_id;