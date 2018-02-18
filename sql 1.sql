select * from users;


insert into users (FIRST_NAME, LAST_NAME) 
values ('Peter', 'Dale');

update users set FIRST_NAME = 'Gandalf',
LAST_NAME = 'The Gray' where id = 7;

delete from users where id = 1;
select * from users;

select * from users
where first_name = 'Peter';

select * from users
where first_name = 'Peter' and id = 4;

select * from users;
