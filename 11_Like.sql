use my_train_titanic;
select * from passengers;

-- Like 模糊搜尋
select * from passengers where name like '%william%'; 
# 前面可有東西
select * from passengers where name like '%william'; 
# 後面可有東西
select * from passengers where name like 'william%'; 

-- 找名字是William
select * from passengers where name like '% william %';
select * from passengers where name like '% william %' and sex = 'male';

-- 找姓氏為Williams
select * from passengers where name like 'williams%';
select * from passengers where name like 'williams, %'; 

-- 找姓氏為Smith 
select * from passengers where name like 'Smith%';

-- 找姓名有註解的
select * from passengers where name like '%)';
select * from passengers where name like '%)%';     

-- 查找多個條件
select * from passengers where name like '%williams%' and name like '%charles%';

-- 搜尋資料位數:兩位數
select * from passengers where ticketId like '__';   

-- practice
 select * from passengers where ticketId like '__' and name like '% william %' and sex = 'male' ;   