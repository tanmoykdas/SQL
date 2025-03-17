create database if not exists test;
use test;
drop table if exists temp1;
create table if not exists temp1 (
id int AUTO_INCREMENT,
name varchar(50),
primary key(id, name));
insert into temp1 (name) values ('tanmoy');
insert into temp1 (name) values ('prosen');

select * from temp1;

drop table if exists temp2;
create table if not exists temp2 (
id int,
cgpa double,
foreign key(id) references temp1(id));

insert into temp2 (id, cgpa) values (1, 2.69);
insert into temp2 (id, cgpa) values (2, 2.89);

select * from temp2;