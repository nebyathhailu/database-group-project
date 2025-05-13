set search_path to malnutirition;
CREATE TABLE  malnutirition.monthly_progress_details(
progress_id VARCHAR(10) NOT NULL,
child_id VARCHAR(10) NOT NULL,
current_weight_in_kg DECIMAL(3,2) NOT NULL,
current_height_in_cm DECIMAL(3,2) NOT NULL,
previous_weight_in_kg DECIMAL(3,2) NOT NULL,
previous_height_in_cm DECIMAL(3,2) NOT NULL,
CONSTRAINT progress_id PRIMARY KEY(progress_id),
CONSTRAINT child_fk FOREIGN KEY(child_id)REFERENCES malnutirition.child_data(child_id)
)
drop  table malnutirition.monthly_progress_details;
INSERT INTO malnutirition.monthly_progress_details(progress_id,child_id,previous_weight_in_kg,previous_height_in_cm,current_weight_in_kg,current_height_in_cm)
VALUES 
('mp01','020',8.0,63,7.5,64),
('mpo2','021',8.0,61,8.0,62),
('mpo3','022',7.8,64,9.0,63),
('mpo4','023',7.9,62,8.9,65),
('mpo5','024',7.6,62,8.5,62),
('mpo6','025',7.9,63,8.0,63),
('mpo7','027',8.0,63,8.4,62),
('mpo8','028',7.5,62,8.3,61),
('mpo9','029',7.9,61,8.0,62),
('mpo10','030',7.6,63,8.4,62),
('mpo11','031',7.9,62,7.8,62),
('mpo12','032',7.8,60,7.9,61),
('mpo13','033',7.8,62,7.5,63),
('mpo14','034',7.6,64,7.4,65),
('mpo15','035',7.8,64,7.9,64);
SELECT * FROM malnutirition.monthly_progress_details;

select * from malnutirition.child_data;
select * from malnutirition.parent_data;
select * from malnutirition.parent_child_relation;


ALTER TABLE malnutirition.monthly_progress_details
ADD BMI DECIMAL(5,2),
ADD bmi_previous DECIMAL(5,2);


UPDATE malnutirition.monthly_progress_details
SET BMI = current_weight_in_kg / POWER(current_height_in_cm / 100, 2),
    bmi_previous = previous_weight_in_kg / POWER(previous_height_in_cm / 100, 2);


SELECT COUNT(*) AS count_of_children
FROM malnutirition.monthly_progress_details
WHERE BMI > bmi_previous;

ALTER TABLE malnutirition.monthly_progress_details
DROP COLUMN BMI,
DROP COLUMN bmi_previous;








