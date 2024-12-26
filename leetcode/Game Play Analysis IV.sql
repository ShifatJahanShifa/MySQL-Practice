select round(sum(b.event_date=DATE_ADD(a.event_date, interval 1 day))/count(distinct a.player_id),2) as fraction from Activity as a inner join Activity as b on a.player_id=b.player_id 
where (a.player_id, a.event_date) in (select player_id,min(event_date) as login from Activity group by player_id);
