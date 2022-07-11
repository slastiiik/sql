select * from students;
select id from students;
select name from students;
select email from students;
select email, name from students;
select id, email, created_on from students;
select * from students
where password = '12333';
select * from students
where created_on = '2021-03-26 00:00:00';
select * from students
where name like '%Anna%';
select * from students
where name like '%8';
select * from students
where name like '%a%';
select * from students
where created_on = '2021-07-12 00:00:00';
select * from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';
select * from students
where created_on = '2021-07-12 00:00:00 ' and name like '%Andrey%';
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';
select * from students
where id = 110;
select * from students
where id = 153;
select * from students
where id > 140;
select * from students
where id < 130;
select * from students
where id < 127 or id > 180;
select * from students
where id <= 137;
select * from students
where id >= 137;
select * from students
where id > 180 and id < 190;
select * from students
where id >= 180 and id <= 190;
select * from students
where password = '12333' or password = '1m313' or password = '123313';
select * from students
where created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '2021-03-26 00:00:00';
select min(id) as min_id
from students;
select max(id) as max_id
from students;
select count(distinct id) from students;
select id, name, created_on from students
order by created_on asc;
select id, name, created_on from students
order by created_on desc;

