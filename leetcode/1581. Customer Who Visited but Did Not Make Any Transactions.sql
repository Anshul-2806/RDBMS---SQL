select visits.customer_id, 
count(*) count_no_trans
from visits 
where visit_id not in (select visit_id from transactions)
group by visits.customer_id
