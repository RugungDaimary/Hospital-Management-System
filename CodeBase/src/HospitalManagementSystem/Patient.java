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
        String name = scanner.next();
        System.out.print("Enter Patient Disease: ");
        String disease = scanner.next();
        System.out.print("Enter Patient Sex: ");
        String sex = scanner.next();
        System.out.print("Enter Doctor Id: ");
        String docId = scanner.next();
        System.out.print("Enter Hospital Id: ");
        String hosId = scanner.next();

        String query = "INSERT INTO Patient(Patient_Name, Disease, Sex, Doc_Id, Hos_Id) VALUES(?, ?, ?, ?, ?)";
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
            System.out.println("+------------+--------------------+----------+------------+");
            System.out.println("| Patient Id | Name               | Disease  | Sex        |");
            System.out.println("+------------+--------------------+----------+------------+");
            while (resultSet.next()) {
                String id = resultSet.getString("Patient_Id");
                String name = resultSet.getString("Patient_Name");
                String disease = resultSet.getString("Disease");
                String sex = resultSet.getString("Sex");
                System.out.printf("| %-10s | %-18s | %-8s | %-10s |\n", id, name, disease, sex);
            }
            System.out.println("+------------+--------------------+----------+------------+");
        } catch (SQLException e) {
            System.err.println("Error viewing patients: " + e.getMessage());
        }
    }


    public boolean getPatientById(String id) {
        String query = "SELECT * FROM Patient WHERE Patient_Id = ?";
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
}