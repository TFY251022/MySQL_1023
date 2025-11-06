use my_database;
desc cars_03;

select * from cars_03;

insert into cars_03(car_brand, car_color, car_sale_price)
values
('Toyata', null, default),
('Honda', null, default);

select * from cars_03;