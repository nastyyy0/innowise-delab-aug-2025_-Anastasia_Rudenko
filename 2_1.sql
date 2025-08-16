--список заказов вместе с именем клиента, который сделал заказ
select c.first_name , 
	   c.last_name, 
	   o.item, 
	   sum(o.amount )
from customers c
inner join orders o  
	on c.customer_id = o.customer_id
group by c.first_name, c.last_name, o.item;

