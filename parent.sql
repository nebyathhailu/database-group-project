create schema malnutrition;
create table malnutrition.parent_data(
parent_id VARCHAR (20) primary key,
parent_name VARCHAR (100),
gender VARCHAR (20),
home_address VARCHAR (50),
phone_number VARCHAR (20)
);

insert into malnutrition.parent_data(parent_id, parent_name, gender, home_address, phone_number)
values('P01','Mary','female','Kissi','+254654789098'),
('P02','John','male','Karen','+254665489098'),
('P03','Sylvia','female','Kissi','+254654789234'),
('P04','Robert','female','Kisumu','+254698099098'),
('P05','Emily','female','Kisumu','+254654124398'),
('P06','Peter','male','Kisumu','+254654782143'),
('P07','Anne','female','Kissi','+254654709890'),
('P08','Kane','male','Karen','+254654789432'),
('P09','Tom','male','Kissi','+254654435267'),
('P10','Margaret','female','Kissi','+254654098765'),
('P11','David','male','Kissi','+254214356786'),
('P12','Sofia','female','Karen','+254098789654'),
('P13','Mark','male','Karen','+254609854789'),
('P14','Charles','male','Kisumu','+254478909865'),
('P15','Susan','female','Kissi','+254654098789');

select * from malnutrition.parent_data;

select count(*)
from malnutrition.parent_data 
where parent_name ilike 'k%';


create table malnutrition.parent_child_relation(
relation_id VARCHAR (20) primary key,
parent_id VARCHAR (20) references malnutrition.parent_data(parent_id),
child_id VARCHAR (20)  references malnutrition.child_data(child_id)
);

insert into malnutrition.parent_child_relation(relation_id, parent_id,child_id)
values ('R01','P01','020'),
('R02','P02','021'),
('R03','P03','022'),
('R04','P04','023'),
('R05','P05','023'),
('R06','P06','024'),
('R07','P06','025'),
('R08','P07','026'),
('R09','P08','027'),
('R10','P09','028'),
('R11','P10','029'),
('R12','P11','029'),
('R13','P12','030'),
('R14','P12','031'),
('R15','P13','032'),
('R16','P14','033'),
('R17','P15','034'),
('R18','P15','035');


select * from malnutrition.parent_child_relation;

select COUNT (*)
FROM(
SELECT child_id
from malnutrition.parent_child_relation
group by child_id 
having COUNT(parent_id)>1
) as children_with_many_parent;




