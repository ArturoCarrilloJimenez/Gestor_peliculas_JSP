<%@ page import="java.sql.Connection" %>
<%@ page import="src.model.ConnectionModel" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%
    // Si no hay sesion iniciada, redirigir a index.jsp
    String action = request.getParameter("action");
%>
<html>
<head>
    <title>CineScope</title>
    <link rel="icon" href="img/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="styles/style.css">
</head>

<body>
<div class="container">
    <!-- Header and nav -->
    <div class="header">
        <div class="logo">
            <a href="http://localhost:8081/indexConten.jsp?action=showMovies">
                <img src="img/logo.png" alt="CineScope">
            </a>
        </div>
        <div class="menu">
            <ul>
                <li><a href="indexConten.jsp?action=showMovies">Movies</a></li>
                <li><a href="indexConten.jsp?action=showActors">Actors</a></li>
                <li><a href="indexConten.jsp?action=showDirectors">Directors</a></li>
            </ul>
        </div>
    </div>
    <!-- Body -->
    <div id="cuerpoPeliiculas">
        <% // Mostrar peliculas
            if (action == null) {
                session.setAttribute("message", "Primero debes iniciar sesion");
                response.sendRedirect("index.jsp");
            } else if (action.equals("showMovies")) {
                ConnectionModel connectionModel = new ConnectionModel();
                Connection connection = connectionModel.getConnection();
                if (connection != null) {
                    try {
                        PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM movies");
                        ResultSet resultSet = preparedStatement.executeQuery();
                        while (resultSet.next()) {
        %>
        <div class="movie">
            <div class="info">
                <h2 class="title"><%=resultSet.getString("title")%>
                </h2>
                <p class="year"><%=resultSet.getString("year")%>
                </p>
                <p class="duration"><%=resultSet.getString("duration")%> min</p>
                <div class="option">
                    <a href="#"><img src="svg/view.svg"></a>
                    <a href="#"><img src="svg/edit.svg"></a>
                    <a href="#"><img src="svg/delete.svg"></a>
                </div>
            </div>
            <img src="<%=resultSet.getString("poster")%>" class="poster">
        </div>
        <%
                    }
                    resultSet.close();
                    preparedStatement.close();
                    connection.close();
                } catch (Exception e) {
                }
            }
        } else if (action.equals("showActors")) { // Mostrar actores
            ConnectionModel connectionModel = new ConnectionModel();
            Connection connection = connectionModel.getConnection();
            if (connection != null) {
                try {
                    PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM people;");
                    ResultSet resultSet = preparedStatement.executeQuery();
                    while (resultSet.next()) {
        %>
        <div class="actor">
            <div class="info">
                <h2 class="name"><%=resultSet.getString("firstname")%> <%=resultSet.getString("lastname")%>
                </h2>
                <div class="info_act">
                    <p class="yearOfBirth"><%=resultSet.getString("yearOfBirth")%>
                    </p>
                    <p class="country"><%=resultSet.getString("country")%>
                    </p>
                </div>
                <div class="option">
                    <a href="#"><img src="svg/view.svg"></a>
                    <a href="#"><img src="svg/edit.svg"></a>
                    <a href="#"><img src="svg/delete.svg"></a>
                </div>
            </div>
            <img src="<%=resultSet.getString("picture")%>" class="photo">
        </div>
        <%
                    }
                    resultSet.close();
                    preparedStatement.close();
                    connection.close();
                } catch (Exception e) {

                }
            }
        } else if (action.equals("showDirectors")) { // Mostrar los directores
            ConnectionModel connectionModel = new ConnectionModel();
            Connection connection = connectionModel.getConnection();
            if (connection != null) {
                try {
                    PreparedStatement preparedStatement = connection.prepareStatement("SELECT DISTINCT people.* FROM people INNER JOIN direct ON people.id = direct.idPerson;");
                    ResultSet resultSet = preparedStatement.executeQuery();
                    while (resultSet.next()) {
        %>
        <div class="actor">
            <div class="info">
                <h2 class="name"><%=resultSet.getString("firstname")%> <%=resultSet.getString("lastname")%>
                </h2>
                <div class="info_act">
                    <p class="yearOfBirth"><%=resultSet.getString("yearOfBirth")%>
                    </p>
                    <p class="country"><%=resultSet.getString("country")%>
                    </p>
                </div>
                <div class="option">
                    <a href="#"><img src="svg/view.svg"></a>
                    <a href="#"><img src="svg/edit.svg"></a>
                    <a href="#"><img src="svg/delete.svg"></a>
                </div>
            </div>
            <img src="<%=resultSet.getString("picture")%>" class="photo">
        </div>
        <%
                        }
                        resultSet.close();
                        preparedStatement.close();
                        connection.close();
                    } catch (Exception e) {

                    }
                }
            }

        %>
    </div>
    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 CineScope</p>
        <h6>Arturo Carrillo Jimenez</h6>
    </div>
</div>
</body>
</html>