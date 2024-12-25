create table students(
	id int primary key,
    name varchar(50)
);

create table course(
	id int primary key,
    course varchar(50)
);

insert into students values(101,"adam");
insert into students values(102,"bob");
insert into students values(103,"casey");
insert into course values(102,"english");
insert into course values(105,"math");
insert into course values(103,"science");
insert into course values(107,"computer science");

select * from students;
select * from course;

select * from students as s join course as c on s.id=c.id;
select * from students as s left join course as c on s.id=c.id;
select * from students as s right join course as c on s.id=c.id;
select * from students as s left join course as c on s.id=c.id union select * from students as s right join course as c on s.id=c.id; 
select * from students as s left join course as c on s.id=c.id where c.id is null;
select * from students as s right join course as c on s.id=c.id where s.id is null;
select * from students as s left join course as c on s.id=c.id where c.id is null union select * from students as s right join course as c on s.id=c.id where s.id is null;

create table employee(
	id int primary key,
    name varchar(50),
    man_id int
);


insert into employee values(101,"adam",103);
insert into employee values(102,"bob",104);
insert into employee values(103,"casey",null);
insert into employee values(104,"donald",103);

select * from employee;

select a.name, b.name from employee as a join employee as b on a.id=b.man_id;

