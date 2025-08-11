--список доставок со статусом и именем клиента
select s.status,
	   c.first_name,
	   c.last_name 
from shippings s 
inner join customers c 
	on c.customer_id = s.customer;