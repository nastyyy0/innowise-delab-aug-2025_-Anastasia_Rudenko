--количество клиентов в каждой стране
select c.country , 
	   count(c.customer_id ) as count
from customers c 
group by c.country;