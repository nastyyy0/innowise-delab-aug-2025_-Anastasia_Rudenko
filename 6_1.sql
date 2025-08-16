--Для каждого заказа добавьте колонку с суммой всех заказов этого клиента 
select o.order_id, 
	   c.customer_id, 
	   o.item, 
	   o.amount, 
	   SUM(o.amount) OVER (PARTITION BY o.customer_id) AS total_by_customer
from orders o 
inner join customers c 
	on c.customer_id = o.customer_id
order by o.order_id;