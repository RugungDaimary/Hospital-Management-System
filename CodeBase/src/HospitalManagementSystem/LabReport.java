package HospitalManagementSystem;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LabReport {
    private Connection connection;

    public LabReport(Connection connection) {
        this.connection = connection;
    }

    public void viewLabReports() {
        String query = "SELECT * FROM Lab_Report";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            System.out.println("Lab Reports: ");
            System.out.println("+------------+--------------------+------------+--------------+");
            System.out.println("| Report Id  | Doctor Id          | Patient Id | Date of Issue|");
            System.out.println("+------------+--------------------+------------+--------------+");
            while (resultSet.next()) {
                String reportId = resultSet.getString("Report_Id");
                String doctorId = resultSet.getString("Doctor_Id");
                String patientId = resultSet.getString("Patient_Id");
                Date dateOfIssue = resultSet.getDate("Date_of_Issue");
                System.out.printf("| %-10s | %-18s | %-10s | %-12s |\n", reportId, doctorId, patientId, dateOfIssue);
            }
            System.out.println("+------------+--------------------+------------+--------------+");
        } catch (SQLException e) {
            System.err.println("Error viewing lab reports: " + e.getMessage());
        }
    }

    public void getLabReportByPatientId(int patientId) {
        String query = "SELECT * FROM Lab_Report WHERE Patient_Id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, patientId);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                System.out.println("Lab Reports for Patient ID " + patientId + ": ");
                System.out.println("+------------+--------------------+------------+--------------+");
                System.out.println("| Report Id  | Doctor Id          | Patient Id | Date of Issue|");
                System.out.println("+------------+--------------------+------------+--------------+");
                while (resultSet.next()) {
                    String reportId = resultSet.getString("Report_Id");
                    String doctorId = resultSet.getString("Doctor_Id");
                    Date dateOfIssue = resultSet.getDate("Date_of_Issue");
                    System.out.printf("| %-10s | %-18s | %-10s | %-12s |\n", reportId, doctorId, patientId, dateOfIssue);
                }
                System.out.println("+------------+--------------------+------------+--------------+");
            }
        } catch (SQLException e) {
            System.err.println("Error retrieving lab report by patient ID: " + e.getMessage());
        }
    }
}