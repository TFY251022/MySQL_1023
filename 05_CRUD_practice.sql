use my_database;
create table grocery(
grocery_id int primary key auto_increment,
grocery_name varchar(50),
grocery_category varchar(50),
grocery_reserves int
);

insert into grocery(grocery_name, grocery_category, grocery_reserves)
values
('Beef', 'Meat', 13),
('Milk', 'Dairy', 15),
('Spinach', 'Vegetables', 20),
('Cheese', 'Dairy', 5),
('Pork', 'Meat', 8),
('Beer', 'Beverage', 60),
('Cabbage', 'Vegetables', 21),
('Lamb', 'Meat', 16);

select * from grocery;

# 1.
select grocery_name, grocery_category, grocery_reserves from grocery;
# 2.
select grocery_id, grocery_name from grocery where (grocery_id between 3 and 7);
# 3.
select grocery_id, grocery_name, grocery_category from grocery where grocery_category = 'Meat';


select * from player;
update player set player_age = 26 where player_name = 'Bobby';
select player_name, player_age from player where player_name = 'Bobby';

select * from player;
update player set player_name = 'Jonathan' where player_name = 'Jonah';
select player_name, player_age from player where player_name = 'Bobby' and player_name = 'Jonathan';
select player_name, player_age from player where player_name = 'Bobby' or player_name = 'Jonathan';


