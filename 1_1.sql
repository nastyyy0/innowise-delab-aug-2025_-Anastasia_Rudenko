--клиенты из сша, которым > 25
select first_name, 
	   last_name, 
	   age, 
	   country
from customers 
where country = 'USA' and age > 25;