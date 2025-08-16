--1. Создать новую таблицу с именем Departments
create table Departments (
	DepartmentID SERIAL PRIMARY KEY, 
	DepartmentName VARCHAR(50) UNIQUE NOT NULL,
	Location VARCHAR(50)
);

--2. Изменить таблицу Employees, добавив новый столбец с именем Email (VARCHAR(100)). 
alter table Employees add column Email VARCHAR(100);

--3. Добавить ограничение UNIQUE к столбцу Email в таблице Employees
update employees set email = 'smithalice@gmail.com' where employeeid = 1;
update employees set email = 'bob9584@gmail.com' where employeeid = 2;
update employees set email = 'charlie@gmail.com' where employeeid = 3;
update employees set email = 'eve3982@gmail.com' where employeeid = 5;
update employees set email = 'inokentmoll22@gmail.com' where employeeid = 6;
update employees set email = 'riba9191@gmail.com' where employeeid = 7;

ALTER TABLE Employees ADD CONSTRAINT employees_email_unique UNIQUE (Email);

--4. Переименовать столбец Location в таблице Departments в OfficeLocation.
ALTER TABLE Departments RENAME COLUMN Location TO OfficeLocation;
