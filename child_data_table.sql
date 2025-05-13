create schema malnutirition;
drop table malnutirition.child_data;
create table malnutirition.child_data(
child_id varchar(100) primary key,
name varchar(100) not null,
dob date not null,
gender varchar(10) check(gender in('male','female','non-binary','other')));
insert into malnutirition.child_data(child_id,name,dob,gender)
values('020','hewan','2020-02-03','female'),
('021','lwam','2019-03-04','female'),
('022','kbrom','2023-02-04','male'),
('023','heran','2024-03-04','female'),
('024','rgbe','2019-08-09','female'),
('025','kerem','2021-06-03','male'),
('026','jordan','2023-09-06','female'),
('027','jack','2022-08-04','female'),
('028','kevin','2023-03-02','male'),
('029','joe','07-01-2019','female'),
('030','hewi','10-03-2019','female'),
('031','filimon','20-08-2019','female'),
('032','dawit','12-02-2019','male'),
('034','mamo','14-03-2021','female'),
('035','jacklin','24-05-2019','female'),
('036','kidu','22-03-2022','male'),
('037','dave','20-03-2022','male'),
('038','fili','12-03-2023','male'),
('039','loren','18-03-2024','male'),
('040','sami','17-05-2022','male');

select * from malnutirition.child_data;
create table  malnutirition.aid_distributed(
aid_id varchar(10) primary key,
child_id varchar(100) references malnutirition.child_data(child_id),
milk varchar(100),
beans varchar(100),
date_distribution date);
insert into malnutirition.aid_distributed(aid_id,child_id,milk,beans,date_distribution)
values('a1','020','2packs','60kg','2025-02-14'),
('a2','021','2packs','60kg','2025-02-14'),
('a3','022','2packs','60kg','2025-02-14'),
('a4','023','2packs','60kg','2025-02-14'),
('a5','024','2packs','60kg','2025-02-14'),
('a6','025','2packs','60kg','2025-02-14'),
('a7','026','2packs','60kg','2025-02-14'),
('a8','027','2packs','60kg','2025-02-14'),
('a9','028','2packs','60kg','2025-02-14'),
('a10','029','2packs','60kg','2025-02-28'),
('a11','030','2packs','60kg','2025-02-28'),
('a12','031','2packs','60kg','2025-02-28'),
('a13','032','2packs','60kg','2025-02-28'),
('a14','033','2packs','60kg','2025-02-28'),
('a15','034','2packs','60kg','2025-02-28'),
('a16','035','2packs','60kg','2025-02-28'),
('a17','036','2packs','60kg','2025-02-28'),
('a18','037','2packs','60kg','2025-02-28'),
('a19','038','2packs','60kg','2025-02-28'),
('a20','039','2packs','60kg','2025-02-28');
select * from malnutirition.monthly_progress_details;

