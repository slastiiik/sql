create table employees(
	id serial primary key,
	employee_name varchar (50) not null
	);
	insert into employees(employee_name) 
	values 	('Bobbie Hawkins'),
			('Sabrina Gilbert'),
			('Stella Hunter'),
			('Erin Moreno'),
			('Walter Graves'),
			('Ethel Ingram'),
			('Mable Jensen'),
			('Dan Ryan'),
			('Doug Goodman'),
			('Jana Alvarez'),
			('Mona Brock'),
			('Maggie Vaughn'),
			('Essie Norton'),
			('Earnest Parks'),
			('Ashley Smith'),
			('Lola Ford'),
			('Kristen Sparks'),
			('Violet Allen'),
			('Margaret Harper'),
			('Allen Wong'),
			('Latoya Davis'),
			('Donnie Williamson'),
			('Fredrick James'),
			('Terrence Roberts'),
			('Ismael Greer'),
			('Brett Gomez'),
			('Geoffrey Clark'),
			('Eunice Lopez'),
			('Kerry Dawson'),
			('Lee Campbell'),
			('Fred Morrison'),
			('Terry Weaver'),
			('Ivan Carson'),
			('Danielle Daniel'),
			('Terry Carroll'),
			('Sherman Price'),
			('Jodi Harvey'),
			('Scott Stanley'),
			('Erik Jimenez'),
			('Terrance Woods'),
			('Gwendolyn Cox'),
			('Carolyn Robertson'),
			('Nicholas Gregory'),
			('Bennie Clayton'),
			('Kay Gran'),
			('Edwin Valdez'),
			('Christine Higgins'),
			('Nellie Craig'),
			('Guadalupe Bryant'),
			('Susie Carter'),
			('Ross Sutton'),
			('Jackie Richards'),
			('Stewart Watson'),
			('Alfred Green'),
			('Erica Jordan'),
			('Gladys Wilkins'),
			('Marco Anderson'),
			('Geraldine Cobb'),
			('Loretta Sherman'),
			('Mercedes Malone'),
			('Bobby Mckinney'),
			('Lois Soto'),
			('Rosalie Dai'),
			('Olivia Walker'),
			('Tamara Bryan'),
			('Delia Hopkins'),
			('Dianne Drake'),
			('Chad Perry'),
			('Gerard Castro'),
			('Corey Richardson');
select * from  employees;
create table salary(
	id serial primary key,
	monthly_salary Int not null
	);
	insert into salary(monthly_salary) 
	values 	(1000),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500);
SELECT * from salary;
create table employee_salary(
	id serial  primary key,
	employee_id Int not null unique,
	salary_id Int not null
);
SELECT * from employee_salary;
insert into employee_salary (employee_id, salary_id)
values 	(1, 16),
		(2, 6),
		(3, 8),
		(4, 1),
		(5, 11),
		(6, 9),
		(7, 15),
		(8, 7),
		(9, 2),
		(10, 13),
		(11, 10),
		(12, 5),
		(13, 12),
		(14, 14),
		(15, 3),
		(16, 4),
		(17, 15),
		(18, 2),
		(19, 7),
		(20, 9),
		(21, 11),
		(22, 16),
		(23, 4),
		(24, 7),
		(25, 10),
		(26, 12),
		(27, 1),
		(28, 3),
		(29, 5),
		(30, 6),
		(132, 7),
		(256, 8),
		(178, 14),
		(145, 6),
		(135, 4),
		(121, 9),
		(167, 16),
		(189, 11),
		(284, 7),
		(171, 10);
create table roles(
id serial  primary key,
role_name int not null unique
);
alter table roles 
alter column role_name type Varchar (30);
select * from roles;

insert into roles (role_name)
values 	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

create table roles_employee(
	id serial primary key,
	employee_id Int not null unique,
	role_id Int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);
select * from roles_employee;
insert into roles_employee (employee_id, role_id)
values 	(1, 16),
		(2, 6),
		(3, 8),
		(4, 1),
		(5, 11),
		(6, 9),
		(7, 15),
		(8, 7),
		(9, 2),
		(10, 13),
		(11, 10),
		(12, 5),
		(13, 12),
		(14, 14),
		(15, 3),
		(16, 4),
		(17, 19),
		(18, 17),
		(19, 7),
		(20, 9),
		(21, 11),
		(22, 20),
		(23, 18),
		(24, 7),
		(25, 10),
		(26, 12),
		(27, 19),
		(28, 3),
		(29, 5),
		(30, 6),
		(31, 7),
		(32, 8),
		(33, 14),
		(34, 20),
		(35, 4),
		(36, 9),
		(37, 16),
		(38, 18),
		(39, 7),
		(40, 10);
	