--1. Вставить двух новых сотрудников в таблицу Employees. 
INSERT INTO Employees (FirstName, LastName, Department, Salary) VALUES 
('Inokentyi', 'Moll', 'Finance', 70000),
('Gosha', 'Ribakov', 'IT', 83000);

--2. Выбрать всех сотрудников из таблицы Employees. 
select firstname, lastname 
from employees;

--3. Выбрать только FirstName и LastName сотрудников из отдела 'IT'. 
select firstname, lastname 
from employees
where department = 'IT';

--4. Обновить Salary 'Alice Smith' до 65000.00. 
update employees 
set salary = 65000.00
where firstname = 'Alice' and lastname = 'Smith';

--5. Удалить сотрудника, чья LastName — 'Prince'.
-- Удаляем старые ограничения
ALTER TABLE EmployeeProjects DROP CONSTRAINT employeeprojects_employeeid_fkey;
ALTER TABLE EmployeeProjects DROP CONSTRAINT employeeprojects_projectid_fkey;

-- Добавляем новые с каскадным удалением
ALTER TABLE EmployeeProjects 
    ADD CONSTRAINT employeeprojects_employeeid_fkey
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID) ON DELETE CASCADE;

ALTER TABLE EmployeeProjects 
    ADD CONSTRAINT employeeprojects_projectid_fkey
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID) ON DELETE CASCADE; 

delete from employees where lastname = 'Prince';

--6. Проверить все изменения, используя SELECT * FROM Employees;.
SELECT * FROM Employees;