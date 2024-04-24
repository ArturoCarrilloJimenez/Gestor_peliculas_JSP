package src.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsersModel {

    public int login(String user, String password) {
        int message = 0;
        ConnectionModel connModel = new ConnectionModel();
        Connection conn = connModel.getConnection();

        PreparedStatement stmt = null;

        // Consulta a la base de datos

        if (conn != null) { // Si la conexión fue exitosa compruebo que el usuario y contraseña sean correctos
            try {
                stmt = conn.prepareStatement("SELECT COUNT(*) AS num_user FROM users WHERE username = ? AND password = ?");
                stmt.setString(1, user);
                stmt.setString(2, password);

                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    message = rs.getInt("num_user");
                }

                if (message == 0) {
                    message = 1;
                } else {
                    message = 0;
                }

                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
                message = 1;
            }
        }
        return message;
    }
}
