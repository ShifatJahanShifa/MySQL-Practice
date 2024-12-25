select customer_id, count(visit_id) as count_no_trans from visits where visit_id not in
(select distinct v.visit_id from Visits as v inner join Transactions as t on v.visit_id=t.visit_id)
group by customer_id;
