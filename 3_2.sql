--общее количество заказов и среднюю сумму по каждому товару
select o.item,
	   count(o.item),
	   AVG(o.amount)
from orders o
group by o.item;
