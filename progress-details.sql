
CREATE TABLE  malnutrition.monthly_progress_details(
progress_id VARCHAR(10) NOT NULL,
child_id VARCHAR(10) NOT NULL,
current_weight_in_kg DECIMAL NOT NULL,
current_height_in_cm DECIMAL NOT NULL,
CONSTRAINT progress_id PRIMARY KEY(progress_id),
CONSTRAINT child_fk FOREIGN KEY(child_id)REFERENCES malnutrition.child_data(child_id)
)

drop table malnutrition.monthly_progress_details;

INSERT INTO malnutrition.monthly_progress_details(progress_id,child_id,current_weight_in_kg,current_height_in_cm)
VALUES ('mpo1','020',7.5,64),
('mpo2','021',8.0,62),
('mpo3','022',9.0,63),
('mpo4','023',8.9,65),
('mpo5','024',8.5,62),
('mpo6','025',8.0,63),
('mpo7','027',8.4,62),
('mpo8','028',8.3,61),
('mpo9','029',8.0,62),
('mpo10','030',8.4,62),
('mpo11','031',7.8,62),
('mpo12','032',7.9,61),
('mpo13','033',7.5,63),
('mpo14','034',7.4,65),
('mpo15','035',7.9,64);

SELECT * FROM malnutrition.monthly_progress_details;

SELECT * FROM malnutrion.monthly_progress_details;
select COUNT(*) from (
select child_id,
min(weight/power(height_in_cm/100.0,2)) as max_bmi,
max(current_weight/power(height_in_cm/100.0,2)) as max_bmi,
from malnutrion.monthly_progress_details, group by child_id as bmi compire so where max_bmi >min_bmi,
);


