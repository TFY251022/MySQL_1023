-- primary key 主鍵
use my_database;

create table cars_04(
car_id int primary key,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int
);

desc cars_04;

# 主鍵不可重複
insert into cars_04(car_id, car_brand, car_color, car_sale_price)
values(1, "Luxgen", "Pink", 140000);

insert into cars_04(car_id, car_brand)
values(2, "Luxgen");

select * from cars_04;

# 自動增值 auto increment
create table cars_05(
car_id int not null primary key auto_increment,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int
);

desc cars_05;

insert into cars_05(car_brand, car_color, car_sale_price)
values("Luxgen", "Yellow", 100000);

select * from cars_05;

#起始值改變
create table cars_06(
car_id int not null primary key auto_increment,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int
);

alter table cars_06 auto_increment = 101;

insert into cars_06(car_brand, car_color, car_sale_price)
values("Luxgen", "brown", 60000);

select * from cars_06;

# unique 獨特
create table user_account(
user_id int primary key auto_increment,
user_name varchar(50) not null unique,
user_password varchar(100) not null
);

desc user_account;

# 1
insert into user_account(user_name, user_password)
values("iloveLuxgen", "5566");
# 2 輸入沒成功
insert into user_account(user_name, user_password)
values("iloveLuxgen", "6655");
# 3
insert into user_account(user_name, user_password)
values("ihateLuxgen", "5566");

select * from user_account;