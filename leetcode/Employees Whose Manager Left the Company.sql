select t.employee_id from (select manager_id,employee_id from Employees where manager_id is not null and salary <30000) as t 
where t.manager_id not in (select employee_id from Employees) order by t.employee_id;
