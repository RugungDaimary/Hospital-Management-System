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

    public void viewBills() {
        String query = "SELECT * FROM Bill";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            System.out.println("Bills: ");
            System.out.println("+------------+--------------------+----------+------------+");
            System.out.println("| Bill No    | Charges            | Type     | Patient Id |");
            System.out.println("+------------+--------------------+----------+------------+");
            while (resultSet.next()) {
                int billNo = resultSet.getInt("Bill_no");
                float charges = resultSet.getFloat("Bill_Charges");
                String type = resultSet.getString("Patient_Type");
                String patientId = resultSet.getString("Pat_Id");
                System.out.printf("| %-10d | %-18.2f | %-8s | %-10s |\n", billNo, charges, type, patientId);
                System.out.println("+------------+--------------------+----------+------------+");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}