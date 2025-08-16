--1. Найти ProjectName всех проектов, в которых 'Bob Johnson' 
--работал более 150 часов. 
select p.projectname 
from projects p 
	inner join employeeprojects ep on p.projectid = ep.projectid 
	inner join employees e on e.employeeid = ep.employeeid 
where e.firstname = 'Bob' 
	and e.lastname = 'Johnson' 
	and ep.hoursworked > 150;

--2. Увеличить Budget всех проектов на 10%, если к ним назначен 
--хотя бы один сотрудник из отдела 'IT'. 
update projects 
set budget = budget * 1.10
where projectid in (
	select ep.ProjectID
    from EmployeeProjects ep
    join Employees e on ep.EmployeeID = e.EmployeeID
    where e.Department = 'IT'
);

--3. Для любого проекта, у которого еще нет EndDate (EndDate IS NULL), 
--установить EndDate на один год позже его StartDate. 
update Projects
set EndDate = StartDate + INTERVAL '1 year'
where EndDate is null;

select * from employees e ;



