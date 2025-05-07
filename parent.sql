create schema malnutrition;
create table malnutrition.parent_data(
parent_id VARCHAR primary key,
parent_name VARCHAR (100),
gender VARCHAR (20),
address VARCHAR (50),
phone_number VARCHAR (20)
);

insert into malnutrition.parent_data(parent_id, parent_name, gender, address, phone_number)
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