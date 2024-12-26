right(mail,13)='@leetcode.com' and
upper(left(mail,1)) between 'A' and 'Y' 
and left(mail,length(mail)-13) REGEXP '^[a-zA-Z0-9_.-]+$'
;

right ans: 
select * from Users where 
mail regexp '^[A-Za-z][A-Za-z0-9_.-]*@leetcode[\.]com$';
