<%@ page import="src.model.ConnectionModel" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %><%
    // Comprobamos si se ha enviado el formulario
    String action = request.getParameter("action");
    if (action!= null && action.equals("register")) {
        // Recogemos los datos del formulario
        String name = request.getParameter("name");
        String surname =request.getParameter("surname");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");

        // Comprobamos que no haya campos vacios
        if (name == null || surname == null || username == null || email == null || password == null || password2 == null) {
            session.setAttribute("message", "Hay campos vacios");
        } else if (!password.equals(password2)) { // Comprobamos que las contraseñas coincidan
            session.setAttribute("message", "Las contraseñas no coinciden");
        } else { // Si todo es correcto, registramos al usuario
            ConnectionModel connection = new ConnectionModel();
            Connection conn = connection.getConnection();
            PreparedStatement stmt = null;

            // Insertamos los datos en la base de datos
            try {
                stmt = conn.prepareStatement("INSERT INTO users (first_name, lastname, username, email, password) VALUES (?, ?, ?, ?, ?)");
                stmt.setString(1, name);
                stmt.setString(2, surname);
                stmt.setString(3, username);
                stmt.setString(4, email);
                stmt.setString(5, password);
                stmt.executeUpdate();

                // Redirigimos al usuario a la página de inicio
                session.setAttribute("message", "Usuario registrado correctamente");
                response.sendRedirect("index.jsp");

                stmt.close();
                conn.close();
            } catch (Exception e) {
                // Si hay un error, mostramos un mensaje
                session.setAttribute("message", "Error al registrar el usuario,el usuario ya existe");
            }
        }
    }
%>
<?xml version="1.0" encoding="UTF-8"?>
<html lang="es">

<head>
    <title>CineScope</title>
    <link rel="icon" href="img/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="styles/style.css">
    <meta charset="UTF-8">
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

<body>

    <div id="register">
        <h1>Registro</h1>
        <!-- Formulario de registro -->
        <form action="register.jsp?action=register" method="post">
            <input type="text" id="name" name="name" placeholder="Nombre" required>
            <input type="text" id="surname" name="surname" placeholder="Apellidos" required>
            <input type="text" id="username" name="username" placeholder="Nombre de usuario" required>
            <input type="email" id="email" name="email" placeholder="Correo electr&aacute;nico" required>
            <input type="password" id="password" name="password" placeholder="Contrase&ntilde;a" required>
            <input type="password"  id="password2" name="password2" placeholder="Repetir contrase&ntilde;a" required>
            <input type="submit" value="Registrarse" class="buton_login">
        </form>
        <a href="index.jsp">&#191;Ya tienes una cuenta? Inicia sesi&oacute;n</a>
    </div>

</body>

</html>