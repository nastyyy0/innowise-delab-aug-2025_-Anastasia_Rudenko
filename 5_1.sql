--Найдите всех клиентов, которые сделали заказ с максимальной суммой
select c.first_name, 
	   c.last_name,
	   o.amount 
from customers c 
inner join orders o 
	on c.customer_id = o.customer_id 
where o.amount >= (select max(amount) from orders);
