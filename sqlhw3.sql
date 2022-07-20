select * from employees;
select * from roles;
select * from salary;
select * from employee_salary;
select * from roles_employee;

Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.employee_name, salary.monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary on salary_id = salary.id;

Вывести всех работников у которых ЗП меньше 2000.

select employees.employee_name, salary.monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary on salary_id = salary.id
where salary.monthly_salary < 2000;

Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employees.employee_name, salary.monthly_salary from employee_salary
full join salary on salary_id = salary.id
full join employees on employee_id = employees.id
where employees.employee_name is null;

Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employees.employee_name, salary.monthly_salary from employee_salary
full join salary on salary_id = salary.id
full join employees on employee_id = employees.id
where employees.employee_name is null and salary.monthly_salary < 2000;

Найти всех работников кому не начислена ЗП.

select employees.employee_name, salary.monthly_salary from employee_salary
full join salary on salary_id = salary.id
full join employees on employee_id = employees.id
where salary.monthly_salary is null;

Вывести всех работников с названиями их должности.

select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id;

Вывести имена и должность только Java разработчиков.

select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id
where roles.role_name like '%Java%';

Вывести имена и должность только Python разработчиков.

select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id
where roles.role_name like '%Python%';

Вывести имена и должность всех QA инженеров.

select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id
where roles.role_name like '%QA%';

Вывести имена и должность ручных QA инженеров

select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id
where roles.role_name like '%Manual QA%';

Вывести имена и должность автоматизаторов QA

select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id
where roles.role_name like '%Automation QA%';

Вывести имена и зарплаты Junior специалистов

create table roles_employee_salary(
	id serial primary key,
	employee_id Int not null unique,
	role_id Int not null,
	salary_id Int not null
);
select * from roles_employee_salary;
insert into roles_employee_salary (employee_id, role_id,salary_id)
values 	(1, 16, 1),
		(2, 6, 2),
		(3, 8, 3),
		(4, 1, 4),
		(5, 11, 5),
		(6, 9, 6),
		(7, 15, 7),
		(8, 7, 8),
		(9, 2, 9),
		(10, 13, 10),
		(11, 10, 11),
		(12, 5, 12),
		(13, 12, 13),
		(14, 14, 14),
		(15, 3, 15),
		(16, 4, 16),
		(17, 19, 1),
		(18, 17, 2),
		(19, 7, 3),
		(20, 9, 4),
		(21, 11, 5),
		(22, 20, 6),
		(23, 18, 7),
		(24, 7, 8),
		(25, 10, 9),
		(26, 12, 10),
		(27, 19, 11),
		(28, 3, 12),
		(29, 5, 13),
		(30, 6, 14),
		(31, 7, 15),
		(32, 8, 16),
		(33, 14, 1),
		(34, 20, 2),
		(35, 4, 3),
		(36, 9, 4),
		(37, 16, 5),
		(38, 18, 6),
		(39, 7, 7),
		(40, 10, 8);
		
select employees.employee_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Junior%';

Вывести имена и зарплаты Middle специалистов

select employees.employee_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Middle%';

Вывести имена и зарплаты Senior специалистов

select employees.employee_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Senior%';

Вывести зарплаты Java разработчиков

select roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Java%';

Вывести зарплаты Python разработчиков

select roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Python%';

Вывести имена и зарплаты Junior Python разработчиков

select employees.employee_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Junior Python%';

Вывести имена и зарплаты Middle JS разработчиков

select employees.employee_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Middle JavaScript%';

Вывести имена и зарплаты Senior Java разработчиков

select employees.employee_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Senior Java%';

Вывести зарплаты Junior QA инженеров

select roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Junior Manual QA%';

Вывести среднюю зарплату всех Junior специалистов

select AVG(salary.monthly_salary) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Junior%';

Вывести сумму зарплат JS разработчиков

select SUM(salary.monthly_salary) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%JavaScript%';

Вывести минимальную ЗП QA инженеров

select MIN(salary.monthly_salary) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%QA%';

Вывести максимальную ЗП QA инженеров

select MAX(salary.monthly_salary) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%QA%';

Вывести количество QA инженеров

select count(roles.role_name) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%QA%';

Вывести количество Middle специалистов.

select count(roles.role_name) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Middle%';

Вывести количество разработчиков

select count(roles.role_name) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%developer%';

Вывести фонд (сумму) зарплаты разработчиков.

select SUM(salary.monthly_salary) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%developer%';

Вывести имена, должности и ЗП всех специалистов по возрастанию
 
select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
order by salary.monthly_salary asc;
 
Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;

Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;

Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where salary.monthly_salary = 1100 or salary.monthly_salary = 1500 or salary.monthly_salary = 2000
order by salary.monthly_salary asc;
