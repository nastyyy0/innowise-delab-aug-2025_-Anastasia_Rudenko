--1. Увеличить Salary всех сотрудников в отделе 'HR' на 10%. 
update employees 
set salary = salary * 1.10
where department = 'HR';

--2. Обновить Department любого сотрудника с Salary выше 70000.00 
--на 'Senior IT'. 
update employees 
set department = 'Senior IT'
where salary > 70000.00;

--3. Удалить всех сотрудников, которые не назначены ни на один проект в 
--таблице EmployeeProjects. Подсказка: Используйте подзапрос NOT 
--EXISTS или LEFT JOIN 
delete from employees e
where e.employeeid in (
    select e.employeeid
    from public.employees e
    left join employeeprojects ep on e.employeeid = ep.employeeid
    where ep.employeeid is NULL
);

--4. Вставить новый проект и назначить на него двух существующих 
--сотрудников с определенным количеством HoursWorked в 
--EmployeeProjects, и все это в одном блоке BEGIN/COMMIT. 
begin;

insert into Projects (ProjectName, Budget, StartDate, EndDate)
values ('Cybersecurity Upgrade', 80000.00, '2025-09-01', '2026-01-15');

insert into EmployeeProjects (EmployeeID, projectid, HoursWorked)
values 
    (2, currval(pg_get_serial_sequence('Projects', 'projectid')), 100),
    (3, currval(pg_get_serial_sequence('Projects', 'projectid')), 120);

commit;
