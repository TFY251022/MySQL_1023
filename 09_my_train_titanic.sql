use my_train_titanic;
-- 分組呈現各船艙等級的人數 
select pclass, count(pclass) from passengers group by pclass;

-- 分組呈現各性別人數
select sex, count(sex) from passengers group by sex;

-- 分組呈現各性別的平均年齡
select sex, avg(age) from passengers group by sex;

-- 分組呈現各船艙等級的最大和最小年齡歲數
select pclass, max(age), min(age) from passengers group by pclass;  

-- 找出搭乘人數100以上的城市名稱以及搭乘人數
#  join
select * from ports;
select * from passengers;
select city, count(*) as 'boarding counts'
from passengers
join ports
on portId = ports.id
group by portId
having count(*) >= 100;

-- Order by 排序 
-- 乘客依照portid昇幕排列,空值排最後 
select * from passengers order by portId is null, portId;
select * from passengers order by -portid desc;


-- Limit & Offset
select * from passengers limit 10;
-- 跳過10筆算5筆 
select * from passengers limit 10, 5;
-- 跳過5筆算20筆 
select * from passengers limit 20 offset 5;

-- 乘客資料依照portid由小至大找出前15筆資料 
select * from passengers
order by portId is null, portId
limit 15;

select * from passengers
order by portId
limit 2, 15;

-- subquery 子查詢 
#1 找出二等艙最年長乘客的年紀 
select max(age) from passengers where pclass = 2 ;
#2 找出乘客中比二等艙最年長乘客年紀還大的乘客
select * from passengers where age > 70;
-- 找出年紀比二等艙最年長乘客還大的乘客
select pclass, name, age
from passengers
where age > (select max(age) from passengers where pclass = 2);

-- Distinct
select distinct pclass from passengers; 
select distinct portid from passengers;

-- 算出有幾個等級的客艙
select count(distinct pclass) as class_count
from passengers; 

-- 票價種類 
select * from tickets;
select count(distinct fare) from tickets;

-- 多個distinct 
select distinct pclass, sex from passengers;
select count(distinct pclass, sex) from passengers;
