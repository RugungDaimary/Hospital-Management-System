
package HospitalManagementSystem;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseConnection {
    public static Connection getConnection() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/HospitalManagement";
        String user = "root";
        String password = "rugung@123";
        return DriverManager.getConnection(url, user, password);
    }
}