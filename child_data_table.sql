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
('040','sami','17-05-2022','male')

select * from malnutrition.child_data;
create table  malnutrition.aid_distributed(
aid_id varchar(10) primary key,
child_id varchar(100) references malnutrition.child_data(child_id),
milk varchar(100),
beans varchar(100),
date_distribution date);
insert into malnutrition.aid_distributed(aid_id,child_id,milk,beans,date_distribution)
values('a1','020','2packs','60kg','14-02-2025'),
('a2','021','2packs','60kg','14-02-2025'),
('a3','022','2packs','60kg','14-02-2025'),
('a4','023','2packs','60kg','14-02-2025'),
('a5','024','2packs','60kg','14-02-2025'),
('a6','025','2packs','60kg','14-02-2025'),
('a7','026','2packs','60kg','14-02-2025'),
('a8','027','2packs','60kg','14-02-2025'),
('a9','028','2packs','60kg','14-02-2025'),
('a10','029','2packs','60kg','28-02-2025'),
('a11','030','2packs','60kg','28-02-2025'),
('a12','031','2packs','60kg','28-02-2025'),
('a13','032','2packs','60kg','28-02-2025'),
('a14','033','2packs','60kg','28-02-2025'),
('a15','034','2packs','60kg','28-02-2025'),
('a16','035','2packs','60kg','28-02-2025'),
('a17','036','2packs','60kg','28-02-2025'),
('a18','037','2packs','60kg','28-02-2025'),
('a19','038','2packs','60kg','28-02-2025'),
('a20','039','2packs','60kg','28-02-2025');
select * from malnutrition.aid_distributed;


