select contest_id, round(100*(count(*)/(select count(user_id) from Users)),2) as percentage from Register group by contest_id order by percentage desc, contest_id asc;
