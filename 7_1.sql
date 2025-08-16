--вывести клиентов у которых хотя бы 2 заказа
--имеется статус 'Delivered'
--полное имя, общее кол-во заказов, общая сумма заказов, страна
select 
    concat(c.first_name, ' ', c.last_name) as full_name,
    count(o.order_id) as total_orders,
    sum(o.amount) as total_amount,
    c.country
from customers c
inner join orders o on o.customer_id = c.customer_id
where exists  (
    select s.status  from Shippings s
    where s.customer = c.customer_id and s.status = 'Delivered'
)
group by c.customer_id, c.first_name, c.last_name, c.country
having  count(o.order_id) >= 2;
