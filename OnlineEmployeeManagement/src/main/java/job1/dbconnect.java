package job1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbconnect {
    private static String url = "jdbc:mysql://localhost:3306/emp_system";
    private static String userName = "root";
    private static String password = "2001@sqlT";
    private static Connection con;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, userName, password);
            if (con == null) {
                throw new SQLException("Failed to connect to database.");
            }
        } catch (Exception e) {
            System.out.println("Database connection is not successful!");
            e.printStackTrace();
        }
        return con;
    }
}