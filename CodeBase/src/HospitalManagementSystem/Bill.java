package HospitalManagementSystem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Bill {
    private Connection connection;

    public Bill(Connection connection) {
        this.connection = connection;
    }

    public void getBillingInfoByPatientId(int patientId) {
        String query = "SELECT * FROM Bill WHERE Patient_Id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, patientId);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                System.out.println("Billing Information for Patient ID " + patientId + ": ");
                System.out.println("+--------+-------------+--------------+");
                System.out.println("| Bill No| Bill Charges| Patient Type |");
                System.out.println("+--------+-------------+--------------+");
                while (resultSet.next()) {
                    int billNo = resultSet.getInt("Bill_no");
                    double billCharges = resultSet.getDouble("Bill_Charges");
                    String patientType = resultSet.getString("Patient_Type");
                    System.out.printf("| %-6d | %-11.2f | %-12s |\n", billNo, billCharges, patientType);
                }
                System.out.println("+--------+-------------+--------------+");
            }
        } catch (SQLException e) {
            System.err.println("Error retrieving billing info by patient ID: " + e.getMessage());
        }
    }
}