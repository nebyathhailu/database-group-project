CREATE SCHEMA malnutrition;
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
CREATE TABLE  malnutrition.monthly_progress_details(
progress_id VARCHAR(10) NOT NULL,
child_id VARCHAR(10) NOT NULL,
current_weight_in_kg DECIMAL NOT NULL,
current_height_in_cm DECIMAL NOT NULL,
CONSTRAINT progress_id PRIMARY KEY(progress_id),
CONSTRAINT child_fk FOREIGN KEY(child_id)REFERENCES malnutrition.child_data(child_id));

INSERT INTO malnutrition.monthly_progress_details(progress_id,child_id,current_weight_in_kg,current_height_in_cm)
VALUES ('mpo1','020',7.5,64),
('mpo2','021',8.0,62),
('mpo3','022',9.0,63),
('mpo4','023',8.9,65),
('mpo5','024',8.5,62),
('mpo4','025',8,63),
('mpo7','027',8.4,62),
('mpo8','028',8.3,61),
('mpo9','029',8.0,62),
('mpo10','030',8.4,62),
('mpo11','031',7.8,62),
('mpo12','032',7.9,61),
('mpo13','033',7.5,63),
('mpo14','034',7.4,65),
('mpo15','035',7.9,64);
--
--
--
--
--SELECT * FROM malnutrion.monthly_progress_details;
----select COUNT(*) from (
----select child_id,
----min(weight/power(height_in_cm/100.0,2)) as max_bmi,
----max(current_weight/power(height_in_cm/100.0,2)) as max_bmi,
----from malnutrion.monthly_progress_details, group by child_id as bmi compire so where max_bmi >min_bmi,
----
----);
--
--
--
--
--
--
--
--
--
--
--
--
