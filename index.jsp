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
<body>
<div id="login">
    <h1>Iniciar sesion</h1><br/>
    <form action="loginModel.jsp" method="get">
        <input type="text" id="user_login" name="user_login" placeholder="user" required><br>
        <input type="password" id="password_login" name="password_login" placeholder="password" required>
        <button type="submit">Iniciar sesion</button><br>
        <a href="register.jsp">Registrarse</a>
    </form>
</div>
</body>
</html>