# Null & Default
use my_database;

desc employee;

insert into employee(employee_id, employee_name)
values(56, "阿羽");

select * from employee;


-- cars 
# 不可以是空值 not null 
create table cars(
car_brand varchar(50) not 
null,
car_color varchar(50) not null,
car_sale_price int
);

desc cars;

# car_color 沒有給值
-- insert into cars(car_brand, car_sale_price)
-- values('Luxgen', 550000);

# 不是必要的值,如果沒有要補null
insert into cars(car_brand, car_color, car_sale_price)
values
('Luxgen', 'white', 550000),
('Ford', 'white', null);

select * from cars;

# 不可以是空值 not null,但後面可加預設值default
create table cars_02(
car_brand varchar(50) not null default '暫缺',
car_color varchar(50) not null default "unknown",
car_sale_price int default 50000
);
desc cars_02;

insert into cars_02()
values ();

insert into cars_02(car_color)
values ("black");

select * from cars_02;

# 可以是空值 not null,但也有預設值default
create table cars_03(
car_brand varchar(50) default '暫缺',
car_color varchar(50) default "unknown",
car_sale_price int default 50000
);
desc cars_03;

insert into cars_03(car_brand, car_color, car_sale_price)
values(null, "black", null);

insert into cars_03(car_color)
values("black");

select * from cars_03;
