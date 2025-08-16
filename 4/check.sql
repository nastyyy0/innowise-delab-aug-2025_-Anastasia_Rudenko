--3. Тест: В новой сессии подключиться как hr_user и попытаться 
--выполнить SELECT * FROM Employees;. (Должно сработать). 
select  * from employees ;

--4. Как hr_user, попытаться выполнить INSERT нового сотрудника в 
--Employees. (Должно завершиться неудачей). 
insert into employees (FirstName, LastName, Department, Salary) VALUES 
('kolya', 'Lok', 'IT', 60000.00);

--6. Тест: Как hr_user, попробовать выполнить INSERT и UPDATE 
--сотрудника. (Теперь должно сработать). 
insert into employees (FirstName, LastName, Department, Salary) VALUES 
('kolya', 'Lok', 'IT', 60000.00);

update employees
set salary = 70000.00
where firstname = 'kolya';