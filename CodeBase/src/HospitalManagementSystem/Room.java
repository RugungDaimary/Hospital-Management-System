package HospitalManagementSystem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Room {
    private Connection connection;

    public Room(Connection connection) {
        this.connection = connection;
    }

    public void viewRooms() {
        String query = "SELECT * FROM Room";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            System.out.println("Rooms: ");
            System.out.println("+------------+--------------------+");
            System.out.println("| Room No    | Status             |");
            System.out.println("+------------+--------------------+");
            while (resultSet.next()) {
                String roomNo = resultSet.getString("Room_no");
                String status = resultSet.getString("roomstatus");
                System.out.printf("| %-10s | %-18s |\n", roomNo, status);
            }
            System.out.println("+------------+--------------------+");
        } catch (SQLException e) {
            System.err.println("Error viewing rooms: " + e.getMessage());
        }
    }
}