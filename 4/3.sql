--1. Создать нового пользователя PostgreSQL (роль) с именем hr_user и 
--простым паролем. 
create user hr_user with password '12345678'; 

--2. Предоставить hr_user право SELECT на таблицу Employees. 
create role select_role;
grant select on Employees to select_role;
grant select_role to hr_user;

--3. Тест: В новой сессии подключиться как hr_user и попытаться 
--выполнить SELECT * FROM Employees;. (Должно сработать). 

--in check.sql

--4. Как hr_user, попытаться выполнить INSERT нового сотрудника в 
--Employees. (Должно завершиться неудачей). 

--in check.sql

--5. Как пользователь-администратор, предоставить hr_user права 
--INSERT и UPDATE на таблицу Employees. 
create role ins_upd;
grant insert, update on Employees to ins_upd;
grant ins_upd to hr_user;

--6. Тест: Как hr_user, попробовать выполнить INSERT и UPDATE 
--сотрудника. (Теперь должно сработать). 

--in check.sql

