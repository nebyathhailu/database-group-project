create schema malnutrition;
create table malnutrition.child_data(
child_id varchar(100) primary key,
name varchar(100) not null,
dob date not null,
gender varchar(10) check(gender in('male','female','non-binary','other')));
insert into malnutrition.child_data(child_id,name,dob,gender)
values('020','hewan','02-03-2020','female'),
         ('021','lwam','03-04-2019','female'),
('022','kbrom','20-03-2023','male'),
('023','heran','10-06-2024','female'),
('024','rgbe','10-04-2019','female'),
('025','kerem','03-07-2019','male'),
('026','jordan','07-06-2023','female'),
('027','jack','16-10-2022','female'),
('028','kevin','06-03-2023','male'),
('029','joe','07-01-2019','female'),
('030','hewi','10-03-2019','female'),
('031','filimon','20-08-2019','female'),
('032','dawit','12-02-2019','male'),
('033','eric','13-03-2020','male'),
('034','mamo','14-03-2021','female'),
('035','jacklin','24-05-2019','female'),
('036','kidu','22-03-2022','male'),
('037','dave','20-03-2022','male'),
('038','fili','12-03-2023','male'),
('039','loren','18-03-2024','male'),
('040','sami','17-05-2022','male');

select * from malnutrition.child_data;


