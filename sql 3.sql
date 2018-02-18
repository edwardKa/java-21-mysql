INSERT INTO subjects (name) values ('Mathematics');
INSERT INTO subjects (name) values ('History');
INSERT INTO subjects (name) values ('Law');
INSERT INTO subjects (name) values ('Java');

select * from subjects;


insert into teachers (FIRST_NAME, LAST_NAME, SUBJECT_ID) VALUES ('John', 'Smith', 1);

select * from teachers;

SELECT * FROM second_db.students;
insert into students (first_name, last_name, email, age, teacher_id) values('Mark', 'Simons', 'mark@site.com', 19, 1);
insert into students (first_name, last_name, email, age, teacher_id) values('David', 'Bahar', 'david@site.com', 19, 1);
insert into students (first_name, last_name, email, age, teacher_id) values('Yosi', 'Shir', 'yosi@site.com', 19, 1);
insert into students (first_name, last_name, email, age, teacher_id) values('Shmulik', 'Kats', 'kats@site.com', 19, 1);
insert into students (first_name, last_name, email, age, teacher_id) values('Bar', 'Ben Haim', 'bar@site.com', 19, 1);

select * from students;


insert into teachers (FIRST_NAME, LAST_NAME, SUBJECT_ID) VALUES ('Daniel', 'Smith', 2);
insert into teachers (FIRST_NAME, LAST_NAME, SUBJECT_ID) VALUES ('Peter', 'Dale', 4);

update students set teacher_id = 2 where id > 4;

select * from students;
select * from students where teacher_id not in (2,3);

select * from students where teacher_id in (1,3);

select * from students order by email desc;
select * from students order by email asc;
select * from students where email like '%ar%' order by email asc;

select * from students where email like '%a%' order by email asc limit 1;

select count(*) from students;

select s.FIRST_NAME, s.LAST_NAME, t.FIRST_NAME, t.LAST_NAME from students s 
inner join teachers t on t.ID = s.teacher_id
inner join subjects sb on sb.ID = t.subject_id
where sb.NAME like '%Mat%';

select s.FIRST_NAME, s.LAST_NAME, t.FIRST_NAME, t.LAST_NAME, 
sb.NAME from students s 
inner join teachers t on t.ID = s.teacher_id
right join subjects sb on sb.ID = t.subject_id
where sb.NAME = 'Law';




