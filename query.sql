
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
