


CREATE TABLE malnutrition.medical_records (
    record_id VARCHAR(10) PRIMARY KEY,
    child_id VARCHAR (10) NOT NULL,
    visit_date DATE NOT NULL,
    weight DECIMAL(5,2) NOT NULL CHECK (weight > 0),
    height DECIMAL(5,2) NOT NULL CHECK (height > 0),
    treatment VARCHAR(255) NOT NULL,
    CONSTRAINT fk_child
        FOREIGN KEY (child_id) REFERENCES malnutrition.child_data(child_id)
        ON DELETE CASCADE
);


INSERT INTO malnutrition.medical_records (record_id,child_id, visit_date, weight, height, treatment) VALUES
('R1','020', '2024-03-10', 14.5, 98.2, 'moderate malnutrition'),
('R2','021', '2024-01-15', 16.0, 92.3, 'severe malnutrition'),
('R3','022', '2024-05-20', 12.8, 95.0, 'mild malnutrition'),
('R4','024', '2024-06-10', 14.5, 98.2, 'moderate malnutrition'),
('R5','025', '2024-07-15', 16.0, 91.3, 'severe malnutrition'),
('R6','026', '2024-08-20', 12.8, 95.0, 'mild malnutrition'),
('R7','027', '2024-09-10', 14.5, 98.2, 'moderate malnutrition'),
('R8','028', '2024-01-15', 16.0, 93.9, 'severe malnutrition'),
('R10','029', '2024-11-20', 12.8, 95.0, 'mild malnutrition'),
('R11','030', '2024-12-10', 14.5, 98.2, 'moderate malnutrition'),
('R12','031', '2024-8-15', 16.0, 80.3, 'severe malnutrition'),
('R13','032', '2024-9-20', 12.8, 95.0, 'mild malnutrition'),
('R14','033', '2024-10-10', 14.5, 98.2, 'moderate malnutrition'),
('R15','034', '2024-04-15', 16.0, 89.3, 'severe malnutrition');


select * from malnutrition.medical_records;










