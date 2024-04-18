<%@ page import="com.peliculas.connection.MySQLConnection" %>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">

<head>
    <title>CineScope</title>
    <link rel="icon" href="img/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="styles/style.css">
</head>

<body>

    <%
        MySQLConnection mySQLConnection = new MySQLConnection();
    %>

    <div id="login">
        <h1>Iniciar sesion</h1>
        <form action="">
            <label for="user_login">user</label><br>
            <input type="text" id="user_login" placeholder="user"><br>
            <label for="password_login">password</label><br>
            <input type="text" id="password_login" placeholder="password"><br>
            <button type="submit">Iniciar sesion</button><br>
            <a href="#">Registrarse</a>
        </form>
    </div>

</body>

</html>