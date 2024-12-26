right(mail,13)='@leetcode.com' and
upper(left(mail,1)) between 'A' and 'Y' 
and left(mail,length(mail)-13) REGEXP '^[a-zA-Z0-9_.-]+$'
;
