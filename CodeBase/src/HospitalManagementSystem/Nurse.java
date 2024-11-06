package HospitalManagementSystem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Nurse {
    private Connection connection;

    public Nurse(Connection connection) {
        this.connection = connection;
    }

    public void viewNurses() {
        String query = "SELECT * FROM Nurse";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            System.out.println("Nurses: ");
            System.out.println("+------------+--------------------+");
            System.out.println("| Nurse Name | Room No            |");
            System.out.println("+------------+--------------------+");
            while (resultSet.next()) {
                String nurseName = resultSet.getString("Nurse_name");
                String roomNo = resultSet.getString("nurse_room");
                System.out.printf("| %-10s | %-18s |\n", nurseName, roomNo);
                System.out.println("+------------+--------------------+");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}