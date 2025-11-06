use my_database;
create table my_product(
product_id int primary key auto_increment,
product_name varchar(50) not null,
product_price int not null
);
alter table my_product auto_increment = 21;

desc my_product;

insert into my_product(product_name, product_price)
values
("Apple", 50),
("Banana", 60),
("Mango", 120),
("Straeberry", 180),
("Watermelon", 210);

select * from my_product;
