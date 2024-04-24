<%@ page import="src.model.UsersModel" %>
<%@ page import="src.model.ConnectionModel" %>
<%@ page import="java.sql.*" %>
<%
    // Obtenemos los datos del formulario
    String userLogin = request.getParameter("user_login");
    String passwordLogin = request.getParameter("password_login");

    ConnectionModel connModel = new ConnectionModel();
    Connection conn = connModel.getConnection();

    PreparedStatement stmt = null;

    int num_users = 0;

    // Consulta a la base de datos

        if (conn != null) { // Si la conexión fue exitosa compruebo que el usuario y contraseña sean correctos
            try {
                stmt = conn.prepareStatement("SELECT COUNT(*) AS num_user FROM users WHERE username = ? AND password = ?");
                stmt.setString(1, userLogin);
                stmt.setString(2, passwordLogin);

                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    num_users = rs.getInt("num_user");
                }

                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
            }
        }


    if (num_users == 0) {
        session.setAttribute("message", "Datos de inicio de sesion incorrectos");
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("indexMovies.jsp");
    }
%>
<html lang="es">
<head>
    <title>CineScope</title>
    <link rel="icon" href="img/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="styles/style.css">
</head>

<body>
</body>

</html>