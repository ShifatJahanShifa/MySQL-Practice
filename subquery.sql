select * from student;
alter table student 
change full_name name varchar(100);
select avg(marks) from student;
select name from student where marks > (select avg(marks) from student);
select * from student where rollno % 2=0;
select max(marks) from student where city_name="delhi";