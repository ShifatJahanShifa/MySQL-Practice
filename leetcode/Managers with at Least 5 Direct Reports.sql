select name from Employee where id in(
select b.managerId from Employee as a join Employee as b on a.id=b.managerId 
group by b.managerId
having count(*) >= 5);
