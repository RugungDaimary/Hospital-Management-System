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

            while (true) {
                System.out.println("1. Add Patient");
                System.out.println("2. View Patients");
                System.out.println("3. View Doctors");
                System.out.println("4. Find Doctor by ID");
                System.out.println("5. Book Appointment");
                System.out.println("6. Find Doctors by Disease");
                System.out.println("7. Exit");
                System.out.print("Enter your choice: ");

                if (!scanner.hasNextInt()) {
                    System.out.println("Invalid input. Please enter a number between 1 and 7.");
                    scanner.next(); // Clear the invalid input
                    continue;
                }

                int choice = scanner.nextInt();

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
                        String doctorId = scanner.next();
                        doctor.findDoctorById(doctorId);
                        break;
                    case 5:
                        Appointment.bookAppointment(patient, doctor, connection, scanner);
                        break;
                    case 6:
                        System.out.print("Enter Disease: ");
                        String disease = scanner.next();
                        doctor.findDoctorsByDisease(disease);
                        break;
                    case 7:
                        System.out.println("THANK YOU! FOR USING HOSPITAL MANAGEMENT SYSTEM!!");
                        scanner.close();
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