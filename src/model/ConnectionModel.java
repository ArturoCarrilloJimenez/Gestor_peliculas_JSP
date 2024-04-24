package src.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Clase que se encarga de la conexion y gestion de la base de datos
 *
 * @version 1.0
 * @since 2024
 * @author Arturo Carrillo Jimenez
 */
public class ConnectionModel {
    private Connection conn = null;

    /**
     * Metodo que se encarga de la conexion a la base de datos
     *
     */
    public ConnectionModel() {
        // Conexion a la base de datos
        String user = "root";
        String password = "root";

        // Librería de MySQL
        String driver = "com.mysql.cj.jdbc.Driver";

        // Ruta de nuestra base de datos (desactivamos el uso de SSL con "?useSSL=false")
        String url = "jdbc:mysql://mysql_db:3306/bd_peliculas?useSSL=false";

        // Conectar a la base de datos
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
        }
    }

    public java.sql.Connection getConnection() {
        return conn;
    }
}
