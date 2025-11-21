create database transaction_test;
use transaction_test;

create table transaction_test(
id int not null primary key auto_increment,
user_name varchar(50),
user_deposit bigint
);

insert into transaction_test(user_name, user_deposit)
values
('Sam', 200000),
('Evelyn', 80000);

select * from transaction_test;

-- notmal transaction 正常交易
update transaction_test set user_deposit = user_deposit -20000 where id = 1; 
update transaction_test set user_deposit = user_deposit +20000 where id = 2;

select * from transaction_test; 

-- auto commit off
set @@autocommit = off;
update transaction_test set user_deposit = user_deposit -20000 where id = 1; 
update transaction_test set user_deposit = user_deposit +20000 where id = 2;
 
select * from transaction_test;
# 斷線後數據會回去,需要commit上去才真的改變資料
commit; 

-- rollback 資料回復
set @@autocommit = off;

update transaction_test set user_deposit = user_deposit -20000 where id = 1;
update transaction_test set user_deposit = user_deposit +20000 where id = 2;

select * from transaction_test;

rollback;

select * from transaction_test;

set @@autocommit = on;