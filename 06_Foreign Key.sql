create database social_media_app;
use social_media_app;

create table users(
id int not null primary key auto_increment,
user_name varchar(200)
);

-- insert data
insert into users(user_name)
values
('Amanda'), ('Brian'), ('Cally'), ('Daniel'), ('Edward');

select * from users;

create table photos(
id int not null primary key auto_increment,
photo_url varchar(200),
user_id int,
# 外來鍵設定 
foreign key (user_id) references users(id)
);

-- check table settings
desc photos;

-- insert data
insert into photos(photo_url, user_id)
values
('https://123456.png', 1),
('https://123.png', 2),
('https://123456.png', 2),
('https://456.png', 3);

select * from users;
select * from photos;
# 不可加入users裡id沒有的數據,但可加入null的數據
insert into photos(photo_url, user_id)
values('https://999999.png', null);

-- on delect restrict  
