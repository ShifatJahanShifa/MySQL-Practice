--  create database if not exists college
-- drop database if exists college;
create database college;

use college;

create table student(
	id int primary key,
    name varchar(100),
    age int not null
);

insert into student values
(1,"shifa",22);
insert into student values
(2,"rini",21);

select * from student;
show databases;
show tables;
drop table student;
CREATE TABLE student (
	rollno int primary key,
    name VARCHAR(100)
);

insert into student values(1,"shifa");
insert into student values(2,"rini");

use college;
drop table student;
create table student(
	rollno int,
    name varchar(100),
    marks int not null,
    grade varchar(2),
    city_name varchar(100)
);

insert into student values(101,"anil",78,"C","pune");
insert into student values(102,"bhumika",93,"A","mumbai");
insert into student values(103,"chetan",85,"B","mumbai");
insert into student values(104,"dhruv",96,"A","delhi");
insert into student values(105,"emanuel",12,"F","delhi");
insert into student values(106,"farah",82,"B","delhi");

select marks, grade from student;
select * from student;
select distinct city_name from student;

select city_name, avg(marks) from student group by city_name order by avg(marks) desc limit 2;
select grade, count(rollno) from student group by grade order by grade;
select city_name, count(rollno) from student group by city_name having max(marks)>90;
select city_name, count(rollno) from student where grade="A" group by city_name having max(marks)>=93 order by city_name;

set sql_safe_updates=0;

update student set marks=50 where marks=12;

create table temp(
	id int primary key,
    name varchar(50)
);

insert into temp values (1,"mitu");
insert into temp values (2,"ritu");
select * from temp;
delete from temp;

alter table student change name full_name varchar(100);
alter table student drop column grade;
delete from student where marks<80;


