(select name as results from Users as u inner join MovieRating as m on u.user_id=m.user_id group by m.user_id order by count(*) desc, u.name asc limit 1)
union all
(select m.title as results from Movies as m inner join MovieRating as r on m.movie_id=r.movie_id where r.created_at between '2020-02-01' and '2020-02-29 ' 
group by r.movie_id order by avg(r.rating) desc,m.title limit 1)
; 
