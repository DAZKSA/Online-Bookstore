//202201223 
//202101369
//202001058
//202207321
//202209273

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    public static Connection initializeDatabase() {
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        String dbURL = "jdbc:mysql://localhost:3306/";
        String dbName = "your_database_name";
        String dbUsername = "your_username";
        String dbPassword = "your_password";

        try {
            Class.forName(dbDriver);
            Connection connection = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);
            return connection;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
