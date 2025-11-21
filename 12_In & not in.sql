use my_train_titanic;
select * from passengers;
-- in
select * from passengers where portId = 1 or portId = 3; 
select * from passengers where portid in (1, 3); 
-- not in 
select * from passengers where portId != 1 and portId != 3; 
select * from passengers where portid not in (1, 3); 

-- practice
select * from passengers where sex != 'Female' and portId not in (2, 3);
 