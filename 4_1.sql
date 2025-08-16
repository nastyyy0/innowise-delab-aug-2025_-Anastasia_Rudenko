--список клиентов, отсортированный по возрасту по убыванию
select c.first_name, 
	   c.last_name, 
	   c.age 
from customers c 
order by c.age desc;
