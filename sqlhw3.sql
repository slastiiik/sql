select * from employees;
select * from roles;
select * from salary;
select * from employee_salary;
select * from roles_employee;



select employees.employee_name, salary.monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary on salary_id = salary.id;



select employees.employee_name, salary.monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary on salary_id = salary.id
where salary.monthly_salary < 2000;



select employees.employee_name, salary.monthly_salary from employee_salary
full join salary on salary_id = salary.id
full join employees on employee_id = employees.id
where employees.employee_name is null;



select employees.employee_name, salary.monthly_salary from employee_salary
full join salary on salary_id = salary.id
full join employees on employee_id = employees.id
where employees.employee_name is null and salary.monthly_salary < 2000;



select employees.employee_name, salary.monthly_salary from employee_salary
full join salary on salary_id = salary.id
full join employees on employee_id = employees.id
where salary.monthly_salary is null;



select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id;



select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id
where roles.role_name like '%Java%';



select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id
where roles.role_name like '%Python%';



select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id
where roles.role_name like '%QA%';



select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id
where roles.role_name like '%Manual QA%';



select employees.employee_name, roles.role_name from roles_employee
join employees on employee_id = employees.id 
join roles on role_id = roles.id
where roles.role_name like '%Automation QA%';



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



select employees.employee_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Middle%';



select employees.employee_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Senior%';



select roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Java%';



select roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Python%';



select employees.employee_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Junior Python%';



select employees.employee_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Middle JavaScript%';



select employees.employee_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Senior Java%';



select roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Junior Manual QA%';



select AVG(salary.monthly_salary) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Junior%';



select SUM(salary.monthly_salary) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%JavaScript%';



select MIN(salary.monthly_salary) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%QA%';



select MAX(salary.monthly_salary) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%QA%';



select count(roles.role_name) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%QA%';



select count(roles.role_name) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%Middle%';



select count(roles.role_name) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%developer%';



select SUM(salary.monthly_salary) from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where roles.role_name like '%developer%';


 
select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
order by salary.monthly_salary asc;
 


select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;



select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;



select employees.employee_name, roles.role_name, salary.monthly_salary from roles_employee_salary
join employees on employee_id = employees.id 
join roles on role_id = roles.id
join salary on salary_id = salary.id
where salary.monthly_salary = 1100 or salary.monthly_salary = 1500 or salary.monthly_salary = 2000
order by salary.monthly_salary asc;
