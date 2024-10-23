-- Query 1: List all doctors working in 'Yashoda Hospital'.
SELECT Doctor.Doctor_Name 
FROM Doctor
JOIN Hospital ON Doctor.Hosp_Id = Hospital.Hospital_Id
WHERE Hospital.Name = 'Yashoda Hospital';

-- Query 2: Retrieve the names of all female doctors in 'Apex City Hospital'.
SELECT Doctor.Doctor_Name
FROM Doctor
JOIN Hospital ON Doctor.Hosp_Id = Hospital.Hospital_Id
WHERE Hospital.Name = 'Apex City Hospital'
AND Doctor.sex = 'F';

-- Query 3: Find all patients who were treated for 'Appendicitis'.
SELECT Patient.Patient_Name 
FROM Patient
WHERE Patient.Disease = 'Appendicitis';

-- Query 4: Get the total number of patients treated in each hospital.
SELECT Hospital.Name, COUNT(Patient.Patient_Id) AS Total_Patients
FROM Patient
JOIN Doctor ON Patient.Doc_Id = Doctor.Doctor_Id
JOIN Hospital ON Doctor.Hosp_Id = Hospital.Hospital_Id
GROUP BY Hospital.Name;

-- Query 5: List all rooms that are currently vacant.
SELECT Room.Room_no 
FROM Room
WHERE Room.roomstatus = 'vacant';

-- Query 6: Find the total bill amount for 'Kartikey Sharma'.
SELECT SUM(Bill.Bill_Charges) AS Total_Amount
FROM Bill
JOIN Patient ON Bill.Pat_Id = Patient.Patient_Id
WHERE Patient.Patient_Name = 'Kartikey Sharma';

-- Query 7: Display lab report details for the patient with ID 'I11645'.
SELECT * 
FROM Lab_Report
WHERE Lab_Report.pat_Id = 'I11645';

-- Query 8: Retrieve the names of all doctors who specialize in 'Cardiology'.
SELECT Doctor.Doctor_Name 
FROM Doctor
JOIN Department ON Doctor.Dept_num = Department.Department_no
WHERE Department.Department_Name = 'Cardiology';

-- Query 9: Find the number of patients each doctor has treated.
SELECT Doctor.Doctor_Name, COUNT(Patient.Patient_Id) AS Total_Patients
FROM Patient
JOIN Doctor ON Patient.Doc_Id = Doctor.Doctor_Id
GROUP BY Doctor.Doctor_Name;

-- Query 10: List the details of all in-patients (INP) bills.
SELECT * 
FROM Bill
WHERE Bill.Patient_Type = 'INP';

-- Query 11: Find all patients treated by doctors from the 'Psychiatry' department.
SELECT Patient.Patient_Name
FROM Patient
JOIN Doctor ON Patient.Doc_Id = Doctor.Doctor_Id
JOIN Department ON Doctor.Dept_num = Department.Department_no
WHERE Department.Department_Name = 'Psychiatry';

-- Query 12: Display the total number of doctors in each department.
SELECT Department.Department_Name, COUNT(Doctor.Doctor_Id) AS Total_Doctors
FROM Doctor
JOIN Department ON Doctor.Dept_num = Department.Department_no
GROUP BY Department.Department_Name;

-- Query 13: List all patients who have a pending outpatient (OUP) bill.
SELECT Patient.Patient_Name
FROM Patient
JOIN Bill ON Patient.Patient_Id = Bill.Pat_Id
WHERE Bill.Patient_Type = 'OUP';

-- Query 14: Find the most recent lab report for patient 'Trasha Khanna'.
SELECT * 
FROM Lab_Report
WHERE Lab_Report.pat_Id = (SELECT Patient.Patient_Id FROM Patient WHERE Patient.Patient_Name = 'Trasha Khanna')
ORDER BY Lab_Report.date_of_issue DESC
LIMIT 1;

-- Query 15: Get the list of doctors and the hospital they are affiliated with.
SELECT Doctor.Doctor_Name, Hospital.Name
FROM Doctor
JOIN Hospital ON Doctor.Hosp_Id = Hospital.Hospital_Id;

-- Query 16: Find all hospitals where a specific department is available.
SELECT Hospital.Name
FROM Hospital
JOIN works_for ON Hospital.Hospital_Id = works_for.H_Id
JOIN Department ON works_for.D_no = Department.Department_no
WHERE Department.Department_Name = 'Cardiology';

-- Query 17: List all nurses assigned to a particular room.
SELECT Nurse.Nurse_name, Nurse.nurse_room
FROM Nurse
WHERE Nurse.nurse_room = '101';

-- Query 18: Find the contact numbers of a particular patient.
SELECT phone_no.Patnt_phone
FROM phone_no
JOIN Patient ON phone_no.Patnt_Id = Patient.Patient_Id
WHERE Patient.Patient_Name = 'Rahul Sharma';

-- Query 19: Retrieve the details of all inpatients who have been discharged.
SELECT Inpatient.*
FROM Inpatient
WHERE Inpatient.Date_of_dis IS NOT NULL;

-- Query 20: Get the total number of rooms in each hospital and their status.
SELECT roomstatus, COUNT(Room_no) AS Total_Rooms
FROM Room
GROUP BY roomstatus;


-- Query 21: List all doctors along with the departments they work in.
SELECT Doctor.Doctor_Name, Department.Department_Name
FROM Doctor
JOIN Department ON Doctor.Dept_num = Department.Department_no;

-- Query 22: Find the number of male and female patients treated in each hospital.
SELECT Hospital.Name, Patient.Sex, COUNT(Patient.Patient_Id) AS Total_Patients
FROM Patient
JOIN Hospital ON Patient.Hos_Id = Hospital.Hospital_Id
GROUP BY Hospital.Name, Patient.Sex;

-- Query 23: Retrieve details of all lab reports issued between specific dates.
SELECT *
FROM Lab_Report
WHERE Lab_Report.date_of_issue BETWEEN '2023-01-01' AND '2023-12-31';

-- Query 24: Get the list of outpatients along with their doctor details.
SELECT Outpatient.OUT_Id, Patient.Patient_Name, Doctor.Doctor_Name
FROM Outpatient
JOIN Patient ON Outpatient.Doc_Id = Patient.Doc_Id
JOIN Doctor ON Outpatient.Doc_Id = Doctor.Doctor_Id;

-- Query 25: List all rooms and their occupancy status.
SELECT Room.Room_no, Room.roomstatus
FROM Room;
