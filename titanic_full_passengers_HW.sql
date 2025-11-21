use my_titanic;

-- 1.
select sex, count(sex) as gender_counts 
from full_passengers 
group by sex;

-- 2.
select id ,pname
from full_passengers
where id between 591 and 883;

-- 3.
select pname, survived
from full_passengers
where pname like 'Andersson, %' and homedest like '%, MN'; 

-- 4.
select *
from full_passengers
where pname like "%Anna%" and pname like "%)"and pname like '%Brogren%' and sex = 'Female';
select *
from full_passengers
where pname like 'Danbom, %' and homedest = 'Stanton, IA';

-- 5.
select id, pclass, pname, sex
from full_passengers
where sex = 'male' and (pname like '% Leonard' or pname like '% Leonard %');

-- 6.
select ticket, count(ticket)
from full_passengers 
group by ticket
order by count(ticket) desc
limit 1;

-- 7.
select pclass, avg(age)
from full_passengers
where pclass in (2,3) and sex = 'male'
group by pclass;

-- 8.
select embarked as 登船點, count(embarked) as 登船人數, 
round(COUNT(embarked) * 100 / (select COUNT(embarked) 
    from full_passengers
WHERE embarked IS NOT NULL AND NOT embarked = ''), 2) as 登船點百分比 
from full_passengers
where embarked is not null and embarked != ''
group by embarked;
