-- Healthcare Appointment Scheduling System
-- oDescription: Create a database to manage appointments in a healthcare setting, including patients, doctors, appointment slots, and medical histories. Include features for appointment scheduling and patient records.
-- oTables: Patients, Doctors, Appointments, MedicalHistories, AppointmentSlots

create database Healthcare_Appointment_cheduling_System;
use healthcare_Appointment_cheduling_system;

-- Create Patients Table

CREATE TABLE patients (
    p_id INT PRIMARY KEY AUTO_INCREMENT,
    p_name VARCHAR(100) NOT NULL,
    p_age INT,
    p_gender VARCHAR(30),
    p_contact VARCHAR(20),
    p_disease VARCHAR(30)
);

-- Create Doctors Table

CREATE TABLE doctors (
    d_id INT PRIMARY KEY AUTO_INCREMENT,
    d_name VARCHAR(30),
    d_specialization VARCHAR(30)
);

-- Create AppointmentSlots Table

CREATE TABLE appointmentslots (
    s_id INT PRIMARY KEY AUTO_INCREMENT,
    s_time DATETIME NOT NULL,
    is_available BOOLEAN DEFAULT TRUE
);


-- Create AppointmentS Table

CREATE TABLE appointment (
    appoinment_id INT PRIMARY KEY AUTO_INCREMENT,
    patients_id INT,
    doctors_id INT,
    slot_id INT,
    appointment_date DATE NOT NULL,
    A_status VARCHAR(30) DEFAULT 'scheduled',
    FOREIGN KEY (patients_id)
        REFERENCES patients (p_id),
    FOREIGN KEY (doctors_id)
        REFERENCES doctors (d_id),
    FOREIGN KEY (slot_id)
        REFERENCES appointmentslots (s_id)
);

-- create MedicalHistories table
 
CREATE TABLE MedicalHistories (
    history_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    diagnosis TEXT,
    treatment TEXT,
    recorded_date DATE,
    FOREIGN KEY (patient_id)
        REFERENCES patients (p_id)
);

select * from patients;
select * from doctors;
select * from appointment;
select * from appointmentslots;
select * from MedicalHistories;

ALTER TABLE appointment DROP COLUMN appoinment_id;
ALTER TABLE appointment ADD appointment_id INT primary key auto_increment;

INSERT INTO Patients (p_name, p_age, p_gender, p_contact, p_disease) VALUES
('Alice Johnson', 29, 'Female', '9876543210', 'Flu'),
('Bob Smith', 45, 'Male', '9876501234', 'Diabetes'),
('Catherine Lee', 34, 'Female', '9823456789', 'Headache'),
('David Brown', 52, 'Male', '9786543210', 'Hypertension'),
('Emma Wilson', 27, 'Female', '9765432190', 'Cough');
delete from patients where p_id between 6 and 10;

alter table doctors add column contact varchar(30);
INSERT INTO Doctors (d_name, d_specialization, contact) VALUES
('Dr. Ravi Kumar', 'General Physician', '9123456780'),
('Dr. Priya Mehta', 'Cardiologist', '9123456781'),
('Dr. Arjun Reddy', 'Neurologist', '9123456782'),
('Dr. Sneha Iyer', 'Dermatologist', '9123456783'),
('Dr. Rajesh Verma', 'Orthopedic', '9123456784');


INSERT INTO AppointmentSlots (s_time, is_available) VALUES
('2025-08-07 09:00:00', TRUE),
('2025-08-07 10:00:00', TRUE),
('2025-08-07 11:00:00', TRUE),
('2025-08-07 12:00:00', TRUE),
('2025-08-07 14:00:00', TRUE),
('2025-08-07 15:00:00', TRUE);

INSERT INTO Appointment (patients_id, doctors_id, slot_id, appointment_date, a_status) VALUES
(1, 1, 1, '2025-08-07', 'Scheduled'),
(2, 2, 2, '2025-08-07', 'Scheduled'),
(3, 3, 3, '2025-08-07', 'Completed'),
(4, 2, 4, '2025-08-07', 'Cancelled'),
(5, 4, 5, '2025-08-07', 'Scheduled');

INSERT INTO MedicalHistories (patient_id, diagnosis, treatment, recorded_date) VALUES
(1, 'Flu with mild fever', 'Paracetamol, rest', '2025-08-01'),
(2, 'Type 2 Diabetes', 'Metformin 500mg', '2025-07-30'),
(3, 'Chronic headaches', 'MRI Scan, Painkillers', '2025-08-02'),
(4, 'Hypertension', 'Lifestyle change, Amlodipine', '2025-07-28'),
(5, 'Dry cough', 'Cough syrup, Steam', '2025-08-03');

select * from medicalHistories;

/*
👨‍⚕️ Patient & Doctor Information
List the names and contact details of all patients who have booked an appointment.

Show the names of all doctors along with their specializations.

Display the patient name, disease, and the doctor they are consulting with.

Retrieve a list of all patients who visited a Cardiologist.

List all patients who haven't booked any appointments yet.

📅 Appointments & Slots
Show the upcoming appointment schedule with patient name, doctor name, and slot time.

Display all appointments that were marked as "Cancelled".

Retrieve all completed appointments along with the treatment history.

List appointments scheduled for a specific date (e.g., 2025-08-07).

Find out which slots are still available for booking.

📋 Medical History
List all patients along with their latest diagnosis and treatment details.

Find patients who have more than one medical history record.

Display the medical history of a patient named “Alice Johnson”.

Retrieve the number of medical history entries for each patient.

Show the diagnosis records recorded in the last 7 days.

📊 Reports & Aggregations
Count how many appointments each doctor has.

Find out which doctor has the highest number of appointments.

Show the total number of appointments scheduled per day.

List the most common diseases among all patients.

Identify the time slots that are most frequently used for appointments.*/


select * from patients;
select * from doctors;
select * from appointment;
select * from appointmentslots;
select * from MedicalHistories;

-- List the names and contact details of all patients who have booked an appointment
select p.p_name,p.P_contact,a.a_status from patients p join appointment a on p.p_id=a.patients_id where a_status='scheduled';

-- Show the names of all doctors along with their specializations.
select d_name as doctor_Name,d_specialization as specialization from doctors;

-- Display the patient name, disease, and the doctor they are consulting with.
SELECT 
    p.p_name, 
    p.p_disease, 
    d.d_name
FROM patients p
JOIN appointment a ON p.p_id = a.patients_id
JOIN doctors d ON a.doctors_id = d.d_id;

-- Retrieve a list of all patients who visited a Cardiologist.
select p.p_name from patients p join Appointment a on p.p_id=a.patients_id join doctors on p.p_id=doctors.d_id where d_specialization='cardiologist';

-- List all patients who haven't booked any appointments yet.
select p.p_name from patients p left join appointment a on p.p_id=a.patients_id where a.patients_id is null;

-- Find out which slots are still available for booking. 
