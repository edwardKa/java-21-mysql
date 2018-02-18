#insert into cars 
#(brand, model) values ('Porshe', 'Cayenne');


insert into cars 
(brand, model, year) 
values ('Porshe', 'Cayenne', 2018);
select * from cars;

select * from users;
update cars set user_id = 100;
update cars set user_id = 3;

select first_name, LAST_NAME from users;


select 
c.BRAND, 
c.MODEL, 
c.YEAR, 
concat (u.FIRST_NAME, ' ', u.LAST_NAME ) as NAME
from cars c 
inner join users u on c.USER_ID = u.ID;




