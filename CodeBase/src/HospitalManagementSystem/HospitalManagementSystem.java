package HospitalManagementSystem;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

public class HospitalManagementSystem {
    public static void main(String[] args) {
        try (Connection connection = DatabaseConnection.getConnection();
             Scanner scanner = new Scanner(System.in)) {
            Patient patient = new Patient(connection, scanner);
            Doctor doctor = new Doctor(connection);
            LabReport labReport = new LabReport(connection);
            Bill bill = new Bill(connection);

            while (true) {
                System.out.println("1. Add Patient");
                System.out.println("2. View Patients");
                System.out.println("3. View Doctors");
                System.out.println("4. Find Doctor by ID");
                System.out.println("5. Find Patients by Disease");
                System.out.println("6. Get Lab Report by Patient ID");
                System.out.println("7. Get Billing Info by Patient ID");
                System.out.println("8. Exit");
                System.out.print("Enter your choice: ");

                if (!scanner.hasNextInt()) {
                    System.out.println("Invalid input. Please enter a number between 1 and 8.");
                    scanner.next(); // Clear the invalid input
                    continue;
                }

                int choice = scanner.nextInt();
                scanner.nextLine(); // Consume the newline character

                switch (choice) {
                    case 1:
                        patient.addPatient();
                        break;
                    case 2:
                        patient.viewPatients();
                        break;
                    case 3:
                        doctor.viewDoctors();
                        break;
                    case 4:
                        System.out.print("Enter Doctor ID: ");
                        String doctorId = scanner.nextLine();
                        doctor.findDoctorById(doctorId);
                        break;
                    case 5:
                        System.out.print("Enter Disease: ");
                        String disease = scanner.nextLine();
                        patient.findPatientsByDisease(disease);
                        break;
                    case 6:
                        System.out.print("Enter Patient ID: ");
                        int patientIdForLab = scanner.nextInt();
                        labReport.getLabReportByPatientId(patientIdForLab);
                        break;
                    case 7:
                        System.out.print("Enter Patient ID: ");
                        int patientIdForBilling = scanner.nextInt();
                        bill.getBillingInfoByPatientId(patientIdForBilling);
                        break;
                    case 8:
                        System.out.println("THANK YOU! FOR USING HOSPITAL MANAGEMENT SYSTEM!!");
                        return;
                    default:
                        System.out.println("Enter valid choice!!!");
                        break;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}