<%@ page import="src.model.ConnectionModel" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%
    // Obtenemos la sesion
    String action = request.getParameter("action");
    if (action != null && action.equals("login")) {
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


        // Si el usuario no existe, muestro un mensaje de error y si no redirijo a la página principal
        if (num_users == 0) {
            session.setAttribute("message", "Datos de inicio de sesion incorrectos");
        } else {
            response.sendRedirect("indexConten.jsp?action=showMovies");
        }
    }
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>CineScope</title>
    <link rel="icon" href="img/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="styles/style.css">
    <%
        String message = (String) session.getAttribute("message");
        if (message != null) {
    %>
    <script>
        alert('<%= message %>');
    </script>
    <%
            session.removeAttribute("message");
        }
    %>
</head>
<body id="bodyLogin">
<!-- Formulario de inicio de sesion -->
<div id="login">
    <h1>Iniciar sesion</h1><br/>
    <form action="index.jsp?action=login" method="post">
        <input type="text" id="user_login" name="user_login" placeholder="user" required><br>
        <input type="password" id="password_login" name="password_login" placeholder="password" required>
        <button type="submit">Iniciar sesion</button><br>
        <a href="register.jsp">Registrarse</a>
    </form>
</div>
</body>
</html>