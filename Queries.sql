
-- Query 1: List all doctors working in 'Yashoda Hospital'.
SELECT Doctor.Doctor_Name 
FROM Doctor
JOIN Hospital ON Doctor.Hospi_reg_no = Hospital.Hospi_reg_no
WHERE Hospital.Hospital_Name = 'Yashoda Hospital';

-- Query 2: Retrieve the names of all female doctors in 'Apex City Hospital'.
SELECT Doctor.Doctor_Name
FROM Doctor
JOIN Hospital ON Doctor.Hospi_reg_no = Hospital.Hospi_reg_no
WHERE Hospital.Hospital_Name = 'Apex City Hospital'
AND Doctor.Doctor_Gender = 'F';

-- Query 3: Find all patients who were treated for 'Appendicitis'.
SELECT Patient.Patient_Name 
FROM Patient
WHERE Patient.Disease = 'Appendicitis';

-- Query 4: Get the total number of patients treated in each hospital.
SELECT Hospital.Hospital_Name, COUNT(Patient.Patient_ID) AS Total_Patients
FROM Patient
JOIN Doctor ON Patient.Doctor_reg_no = Doctor.Doctor_reg_no
JOIN Hospital ON Doctor.Hospi_reg_no = Hospital.Hospi_reg_no
GROUP BY Hospital.Hospital_Name;

-- Query 5: List all rooms that are currently vacant.
SELECT Room.Room_no 
FROM Room
WHERE Room.Status = 'vacant';

-- Query 6: Find the total bill amount for 'Kartikey Sharma'.
SELECT SUM(Bill.Amount) AS Total_Amount
FROM Bill
JOIN Patient ON Bill.Patient_ID = Patient.Patient_ID
WHERE Patient.Patient_Name = 'Kartikey Sharma';

-- Query 7: Display lab report details for the patient with ID 'I11645'.
SELECT * 
FROM Lab_Report
WHERE Patient_ID = 'I11645';

-- Query 8: Retrieve the names of all doctors who specialize in 'Cardiology'.
SELECT Doctor.Doctor_Name 
FROM Doctor
JOIN Department ON Doctor.Dep_id = Department.Dep_id
WHERE Department.Dep_name = 'Cardiology';

-- Query 9: Find the number of patients each doctor has treated.
SELECT Doctor.Doctor_Name, COUNT(Patient.Patient_ID) AS Total_Patients
FROM Patient
JOIN Doctor ON Patient.Doctor_reg_no = Doctor.Doctor_reg_no
GROUP BY Doctor.Doctor_Name;

-- Query 10: List the details of all in-patients (INP) bills.
SELECT * 
FROM Bill
WHERE Bill.Type = 'INP';

-- Query 11: Find all patients treated by doctors from the 'Psychiatry' department.
SELECT Patient.Patient_Name
FROM Patient
JOIN Doctor ON Patient.Doctor_reg_no = Doctor.Doctor_reg_no
JOIN Department ON Doctor.Dep_id = Department.Dep_id
WHERE Department.Dep_name = 'Psychiatry';

-- Query 12: Display the total number of doctors in each department.
SELECT Department.Dep_name, COUNT(Doctor.Doctor_reg_no) AS Total_Doctors
FROM Doctor
JOIN Department ON Doctor.Dep_id = Department.Dep_id
GROUP BY Department.Dep_name;

-- Query 13: List all patients who have a pending outpatient (OUP) bill.
SELECT Patient.Patient_Name
FROM Patient
JOIN Bill ON Patient.Patient_ID = Bill.Patient_ID
WHERE Bill.Type = 'OUP';

-- Query 14: Find the most recent lab report for patient 'Trasha Khanna'.
SELECT * 
FROM Lab_Report
WHERE Patient_ID = 'I76453'
ORDER BY Lab_Report.Date DESC
LIMIT 1;

-- Query 15: Get the list of doctors and the hospital they are affiliated with.
SELECT Doctor.Doctor_Name, Hospital.Hospital_Name
FROM Doctor
JOIN Hospital ON Doctor.Hospi_reg_no = Hospital.Hospi_reg_no;


-- Query 16: Find all hospitals where a specific department is available.
SELECT Hospital.Hospital_Name
FROM Hospital
JOIN works_for ON Hospital.Hospi_reg_no = works_for.H_Id
JOIN Department ON works_for.D_no = Department.Dep_id
WHERE Department.Dep_name = 'Cardiology';

-- Query 17: List all nurses assigned to a particular room.
SELECT Nurse.Nurse_name, Nurse.nurse_room
FROM Nurse
WHERE Nurse.nurse_room = '101';

-- Query 18: Find the contact numbers of a particular patient.
SELECT phone_no.Patnt_phone
FROM phone_no
JOIN Patient ON phone_no.Patnt_Id = Patient.Patient_ID
WHERE Patient.Patient_Name = 'Rahul Sharma';

-- Query 19: Retrieve the details of all inpatients who have been discharged.
SELECT Inpatient.*
FROM Inpatient
WHERE Inpatient.Date_of_dis IS NOT NULL;

-- Query 20: Get the total number of rooms in each hospital and their status.
SELECT Hospital.Hospital_Name, Room.Status, COUNT(Room.Room_no) AS Total_Rooms
FROM Room
JOIN Hospital ON Room.Hospi_reg_no = Hospital.Hospi_reg_no
GROUP BY Hospital.Hospital_Name, Room.Status;

-- Query 21: List all doctors along with the departments they work in.
SELECT Doctor.Doctor_Name, Department.Dep_name
FROM Doctor
JOIN Department ON Doctor.Dep_id = Department.Dep_id;

-- Query 22: Find the number of male and female patients treated in each hospital.
SELECT Hospital.Hospital_Name, Patient.Sex, COUNT(Patient.Patient_ID) AS Total_Patients
FROM Patient
JOIN Hospital ON Patient.Hospi_reg_no = Hospital.Hospi_reg_no
GROUP BY Hospital.Hospital_Name, Patient.Sex;

-- Query 23: Retrieve details of all lab reports issued between specific dates.
SELECT *
FROM Lab_Report
WHERE Lab_Report.Date_of_issue BETWEEN '2023-01-01' AND '2023-12-31';

-- Query 24: Get the list of outpatients along with their doctor details.
SELECT Outpatient.OUT_Id, Patient.Patient_Name, Doctor.Doctor_Name
FROM Outpatient
JOIN Patient ON Outpatient.Doc_Id = Patient.Doc_Id
JOIN Doctor ON Outpatient.Doc_Id = Doctor.Doctor_reg_no;

-- Query 25: List all rooms and their occupancy status.
SELECT Room.Room_no, Room.Status
FROM Room;

