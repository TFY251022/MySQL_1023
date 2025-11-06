-- Tables
use my_database;
create table employee (
employee_id int,
employee_name varchar(50),
employee_age int,
employee_salary int,
employee_department varchar(50)
);

create table members(
member_id int,
member_name varchar(50),
member_gender varchar(20),
member_age int
);

show warnings;

show columns from members;
describe members;
desc members;

# drop table members;

insert into members(member_id, member_name, member_gender, member_age)
values(1, "Abigail", "Female", 15);

insert into members(member_id, member_name, member_gender, member_age)
values
(2, "Maria", "Female", 21),
(3, "Gregory", "Male", 35),
(4, "Scott", "Male", 39);

select * from members;