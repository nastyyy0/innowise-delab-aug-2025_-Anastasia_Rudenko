--1. Функция: Создать функцию PostgreSQL с именем 
--CalculateAnnualBonus, которая принимает employee_id и 
--Salary  в качестве входных данных и возвращает рассчитанную 
--сумму бонуса (10 % от Salary) для этого сотрудника. Используйте 
--PL/pgSQL для тела функции. 
create or replace function CalculateAnnualBonus(emp_id INT)
returns DECIMAL(10,2)
language plpgsql
as $$
declare
    emp_salary DECIMAL(10,2);
    bonus_size DECIMAL(10,2);
begin
    -- Получаем зарплату сотрудника
    select salary into emp_salary
    from employees
    where employeeid = emp_id;

    -- Проверка: если сотрудник не найден
    if emp_salary is NULL then
        return 0;
    END IF;

    -- Вычисляем бонус
    bonus_size := emp_salary * 0.10;
   return bonus_size;
end;
$$;

--2. Использовать эту функцию в операторе SELECT, чтобы увидеть 
--потенциальный бонус для каждого сотрудника. 
select CalculateAnnualBonus(1);

--3. Представление (View): Создать представление с именем 
--IT_Department_View, которое показывает EmployeeID, 
--FirstName, LastName и Salary только для сотрудников из отдела 
--'IT'. 
create or replace view IT_Department_View as
select 
    EmployeeID,
    FirstName,
    LastName,
    Salary
from 
    Employees
where 
    Department = 'IT';

--4. Выбрать данные из вашего представления IT_Department_View.
select * from IT_Department_View;


