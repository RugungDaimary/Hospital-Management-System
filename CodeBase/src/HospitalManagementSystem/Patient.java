package HospitalManagementSystem;

import java.sql.*;
import java.util.Scanner;

public class Patient {
    private Connection connection;
    private Scanner scanner;

    public Patient(Connection connection, Scanner scanner) {
        this.connection = connection;
        this.scanner = scanner;
    }

    public void addPatient() {
        System.out.print("Enter Patient Name: ");
        String name = scanner.nextLine(); // Use nextLine() to capture the full input
        System.out.print("Enter Patient Disease: ");
        String disease = scanner.nextLine(); // Use nextLine() to capture the full input
        System.out.print("Enter Patient Sex: ");
        String sex = scanner.nextLine(); // Use nextLine() to capture the full input
        System.out.print("Enter Doctor Id: ");
        String docId = scanner.nextLine(); // Use nextLine() to capture the full input
        System.out.print("Enter Hospital Id: ");
        String hosId = scanner.nextLine(); // Use nextLine() to capture the full input

        String query = "INSERT INTO Patient(Patient_Name, Disease, Sex, Doctor_Id, Hospital_Id) VALUES(?, ?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, disease);
            preparedStatement.setString(3, sex);
            preparedStatement.setString(4, docId);
            preparedStatement.setString(5, hosId);
            int affectedRows = preparedStatement.executeUpdate();
            if (affectedRows > 0) {
                System.out.println("Patient Added Successfully!!");
            } else {
                System.out.println("Failed to add Patient!!");
            }
        } catch (SQLException e) {
            System.err.println("Error adding patient: " + e.getMessage());
        }
    }

    public void viewPatients() {
        String query = "SELECT * FROM Patient";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            System.out.println("Patients: ");
            System.out.println("+------------+----------------------+-------------------------+-----+");
            System.out.println("| Patient Id | Name                 | Disease                 | Sex |");
            System.out.println("+------------+----------------------+-------------------------+-----+");
            while (resultSet.next()) {
                String id = resultSet.getString("Patient_Id");
                String name = resultSet.getString("Patient_Name");
                String disease = resultSet.getString("Disease");
                String sex = resultSet.getString("Sex");
                System.out.printf("| %-10s | %-20s | %-23s | %-3s |\n", id, name, disease, sex);
            }
            System.out.println("+------------+----------------------+-------------------------+-----+");
        } catch (SQLException e) {
            System.err.println("Error viewing patients: " + e.getMessage());
        }
    }

    public boolean getPatientById(String id) {
        String query = "SELECT 1 FROM Patient WHERE Patient_Id = ?"; // Optimized query to check existence
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, id);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                return resultSet.next();
            }
        } catch (SQLException e) {
            System.err.println("Error retrieving patient: " + e.getMessage());
        }
        return false;
    }

    public void findPatientsByDisease(String disease) {
        String query = "SELECT Patient.Patient_Id, Patient.Patient_Name, Patient.Disease, Patient.Sex " +
                       "FROM Patient " +
                       "WHERE Patient.Disease = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, disease);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                System.out.println("Patients with " + disease + ": ");
                System.out.println("+------------+--------------------+-------------------------+-----+");
                System.out.println("| Patient Id | Name               | Disease                 | Sex |");
                System.out.println("+------------+--------------------+-------------------------+-----+");
                while (resultSet.next()) {
                    String id = resultSet.getString("Patient_Id");
                    String name = resultSet.getString("Patient_Name");
                    String patientDisease = resultSet.getString("Disease");
                    String sex = resultSet.getString("Sex");
                    System.out.printf("| %-10s | %-18s | %-23s | %-3s |\n", id, name, patientDisease, sex);
                }
                System.out.println("+------------+--------------------+-------------------------+-----+");
            }
        } catch (SQLException e) {
            System.err.println("Error finding patients by disease: " + e.getMessage());
        }
    }
}