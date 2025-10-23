# practice
use my_database;
create table player_02(
player_id int,
player_name varchar (50),
player_age int,
player_salary bigint,
player_team varchar (100)
);

desc player_02;

# drop table player_02;

insert into employee
(employee_id, employee_name, employee_age, employee_salary, employee_department)
values
(1, "Tim", 39, 100000, "Sales"),
(2, "Danny", 27, 33000, "Accounting"),
(3, "Wilson", 33, 42000, "Administration"),
(4, "Elizabeth", 22, 29000, "Accounting");

select * from employee;