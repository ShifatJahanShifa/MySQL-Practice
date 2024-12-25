create database if not exists xyz;
use xyz;
create table employee(
	id int primary key,
    name varchar(100),
    salary int not null 
);

insert into employee values(1,"adam",25000);
insert into employee values(2,"bob",30000);
insert into employee values(3,"casey",40000);

select * from employee;


