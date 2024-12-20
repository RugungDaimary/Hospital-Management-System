package HospitalManagementSystem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Doctor {
    private Connection connection;

    public Doctor(Connection connection) {
        this.connection = connection;
    }

    public void viewDoctors() {
        String query = "SELECT Doctor.Doctor_Id, Doctor.Doctor_Name, Department.Department_Name " +
                       "FROM Doctor " +
                       "JOIN Department ON Doctor.Department_Id = Department.Department_Id";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            System.out.println("Doctors: ");
            System.out.println("+------------+--------------------+------------------+");
            System.out.println("| Doctor Id  | Name               | Specialization   |");
            System.out.println("+------------+--------------------+------------------+");
            while (resultSet.next()) {
                String id = resultSet.getString("Doctor_Id");
                String name = resultSet.getString("Doctor_Name");
                String specialization = resultSet.getString("Department_Name");
                System.out.printf("| %-10s | %-18s | %-16s |\n", id, name, specialization);
            }
            System.out.println("+------------+--------------------+------------------+");
        } catch (SQLException e) {
            System.err.println("Error viewing doctors: " + e.getMessage());
        }
    }

    public void findDoctorById(String doctorId) {
        String query = "SELECT Doctor.Doctor_Id, Doctor.Doctor_Name, Department.Department_Name " +
                       "FROM Doctor " +
                       "JOIN Department ON Doctor.Department_Id = Department.Department_Id " +
                       "WHERE Doctor.Doctor_Id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, doctorId);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    String id = resultSet.getString("Doctor_Id");
                    String name = resultSet.getString("Doctor_Name");
                    String specialization = resultSet.getString("Department_Name");
                    System.out.println("Doctor Details: ");
                    System.out.println("+------------+--------------------+------------------+");
                    System.out.println("| Doctor Id  | Name               | Specialization   |");
                    System.out.println("+------------+--------------------+------------------+");
                    System.out.printf("| %-10s | %-18s | %-16s |\n", id, name, specialization);
                    System.out.println("+------------+--------------------+------------------+");
                } else {
                    System.out.println("Doctor not found with ID: " + doctorId);
                }
            }
        } catch (SQLException e) {
            System.err.println("Error finding doctor: " + e.getMessage());
        }
    }

    public boolean getDoctorById(String doctorId) {
        String query = "SELECT 1 FROM Doctor WHERE Doctor_Id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, doctorId);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                return resultSet.next();
            }
        } catch (SQLException e) {
            System.err.println("Error checking doctor existence: " + e.getMessage());
        }
        return false;
    }

    
}