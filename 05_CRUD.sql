use my_database;
create table player(
player_id int not null primary key auto_increment,
player_name varchar(50),
player_position varchar(50),
player_age int
);

insert into player(player_name, player_position, player_age)
values
('Bobby', 'INF', 23),
('Luis', 'P', 30),
('Jonah', 'C', 28),
('Framber', 'P', 30),
('Pete', 'P', 27),
('Matt', 'INF', 29),
('Corbin', 'OF', 23),
('Juan', 'OF', 28);

# 檢視全部表格 
select * from player;
# 檢視部分欄位
select player_id, player_name from player;

select player_position, player_age, player_name from player;

select * from player where player_age = 23;
select player_name, player_age from player where player_age = 23;

# case insensitive 字母大小寫沒差
select * from player where player_name = 'Corbin';
select * from player where player_name = 'corbin';

select * from player where player_position = 'p'and player_age < 28;
select * from player where (player_age between 27 and 29) and player_position = 'p';

-- Aliases 別名
select player_name as 球員姓名, player_position as '守備 位置', player_age 球員年齡 from player; 

-- update 改正
select * from player where player_position = 'P';
update player set player_position = 'Pitcher' where player_position = 'P'; 
select * from player;

select * from player where player_name = 'Pete';
update player set player_position = 'OF' where player_name = 'Pete';
select * from player;   

-- alter 更改設定
select * from employee;
# rename table 重新命名表格
alter table employee rename 員工;
# rename coloum name 重新命名欄位passengers
alter table 員工 change column employee_salary 員工薪資 int;
select * from 員工;

 

-- Delete 刪除
select * from player where player_name = 'Jonathan';
delete from player where player_name = 'Jonathan';
select * from player; 