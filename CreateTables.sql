-- Database creation
CREATE DATABASE HospitalManagement;
USE HospitalManagement;

-- File containing queries for creating tables.

-- Table storing a list of Hospitals.
create table Hospital(
Name varchar(30) NOT NULL,
Address varchar(100) NOT NULL,
Hospital_Id varchar(9) primary key);

-- Table storing a list of Departments a hospital may have.
create table Department(
Department_no int primary key,
Department_Name varchar(20) NOT NULL
);

-- Table storing a list of Doctors working for the hospitals.
create table Doctor(
Doctor_Name varchar(30) NOT NULL,
sex varchar(1) NOT NULL,
Dept_num int NOT NULL,
Doctor_Id varchar(6) primary key,
Hosp_Id varchar(9) NOT NULL,
foreign key(Hosp_Id) references Hospital(Hospital_Id),
foreign key(Dept_num) references Department(Department_no)
);

-- Table storing the financial details of the patient.
create table Bill(
Bill_Charges float,
Patient_Type varchar(10),
Bill_no int primary key,
Pat_Id varchar(6),
Pat_name varchar(30)
);

-- Table storing a list of rooms in hospital.
create table Room( 
Room_no varchar(5) primary key,
roomstatus varchar(6) NOT NULL
);

-- Table storing a list of Patients admitted to the hospital.
create table Patient(
Patient_Name varchar(30),
Disease varchar(20),
Sex varchar(1),
Doc_Id varchar(6),
Hos_Id varchar(9),
Patient_Id varchar(6) primary key,
foreign key(Doc_Id) references Doctor(Doctor_Id),
foreign key(Hos_Id) references Hospital(Hospital_Id)
);

-- Table storing details of medical reports of the patient.
create table Lab_Report(
Doctr_Id varchar(6),
Report_Id varchar(10) primary key,
pat_Id varchar(6),
date_of_issue date,
foreign key(Doctr_Id) references Doctor(Doctor_Id)
);

-- Table storing a list of Inatients in the hospital.
create table Inpatient(
IN_Id varchar(6) primary key,
Doc_Id varchar(6),
R_no varchar(5),
Rept_Id  varchar(10),
Date_of_adm date,
Date_of_dis date,
B_no int,
foreign key(R_no) references Room(Room_no),
foreign key(Rept_Id) references Lab_Report(Report_Id),
foreign key(B_no) references Bill(Bill_no)
);

-- Table storing a list of Outpatients in the hospital.
create table Outpatient(
OUT_Id varchar(6) primary key,
Doc_Id varchar(6),
Rept_Id  varchar(10),
B_no int,
foreign key(B_no) references Bill(Bill_no), 
foreign key(Rept_Id) references Lab_Report(Report_Id)
);

-- Table storing a list of nurse in the hospital.
create table Nurse(
Nurse_name varchar(30),
nurse_room varchar(5),
primary key(Nurse_name,nurse_room),
foreign key(nurse_room) references Room(Room_no)
);

-- Table to denote many to many Department 'works_for' hospital Relationship.
create table works_for(
H_Id varchar(9),
D_no int,
foreign key(D_no) references Department(Department_no),
foreign key(H_Id) references Hospital(Hospital_Id),
Primary key(H_ID,D_no)
);

-- Table to store contact details of the patient.
create table phone_no(
Patnt_Id varchar(6),
Patnt_phone varchar(10) NOT NULL CHECK (patnt_phone NOT LIKE '%[^0-9]%'),
foreign key(Patnt_Id) references Patient(Patient_Id),
primary key(Patnt_Id,Patnt_phone)
);
