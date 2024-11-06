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
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            System.out.println("Lab Reports: ");
            System.out.println("+------------+--------------------+----------+------------+");
            System.out.println("| Report Id  | Doctor Id          | Patient Id | Date of Issue |");
            System.out.println("+------------+--------------------+----------+------------+");
            while (resultSet.next()) {
                String reportId = resultSet.getString("Report_Id");
                String doctorId = resultSet.getString("Doctr_Id");
                String patientId = resultSet.getString("pat_Id");
                Date dateOfIssue = resultSet.getDate("date_of_issue");
                System.out.printf("| %-10s | %-18s | %-8s | %-10s |\n", reportId, doctorId, patientId, dateOfIssue);
                System.out.println("+------------+--------------------+----------+------------+");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}