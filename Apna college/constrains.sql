use test;

create table if not exists cons (
id int auto_increment,
name varchar(20),
age int check( age > 18),
date_of_birth date not null,
phone int unique,
primary key(id, name));

INSERT INTO cons (name, age, date_of_birth, phone) 
VALUES ('Tonu', 19, '2001-03-12', '999');

INSERT INTO cons (name, age, date_of_birth, phone) 
VALUES ('Tuli', 20, '2002-03-12', '990');

/*INSERT INTO cons (name, age, date_of_birth, phone) 
VALUES ('Tan', 17, '2001-03-12', '999');
this cant be inserted because the age is 17 here which does not fulfil check condition.*/

select * from cons;