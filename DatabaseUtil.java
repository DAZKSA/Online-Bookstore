import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {
    private static final String JDBC_URL = "jdbc:mysql:redis-11376.c92.us-east-1-3.ec2.redns.redis-cloud.com:11376";
    private static final String JDBC_USER = "default";
    private static final String JDBC_PASSWORD = "x3WL75RlwF4mpTCT3SH2Lu4V3OfCUCjr";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
    }
}
