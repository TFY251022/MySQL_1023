use my_train_titanic;
select * from passengers;
-- case else 
select id, name, portid,
case 
  when portid = 1 then 'Southampton'
  when portid = 2 then 'Cherbourg'
  when portId = 3 then 'Queenstoen'
  else 'unknown'
end 上傳地點
from passengers;