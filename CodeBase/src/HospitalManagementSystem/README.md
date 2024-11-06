# Hospital Management System

The Hospital Management System is a Java-based application designed to manage various aspects of hospital operations, including patient management, doctor information, lab reports, and billing.

## Features

- **Add Patient**: Register new patients into the system.
- **View Patients**: Display a list of all registered patients.
- **View Doctors**: Display a list of all doctors.
- **Find Doctor by ID**: Search for a doctor using their unique ID.
- **Find Patients by Disease**: Search for patients based on their diagnosed disease.
- **Get Lab Report by Patient ID**: Retrieve lab reports for a specific patient.
- **Get Billing Info by Patient ID**: Retrieve billing information for a specific patient.
- **Exit**: Exit the application.

## Prerequisites

- Java Development Kit (JDK) 8 or higher
- MySQL Database
- JDBC Driver for MySQL

## Setup

1. **Clone the repository:**

   ```bash
   git clone <repository-url>
   cd HospitalManagementSystem
   ```

2. **Set up the database:**

   - Create a MySQL database and import the necessary tables.
   - Update the `DatabaseConnection` class with your database credentials.
