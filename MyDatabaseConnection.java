import javax.annotation.Resource;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class MyDatabaseConnection {

    @Resource(name = "jdbc/bd_peliculas")
    private DataSource dataSource;

    public Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }
}