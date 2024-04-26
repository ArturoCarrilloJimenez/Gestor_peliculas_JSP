<%@ page import="java.sql.Connection" %>
<%@ page import="src.model.ConnectionModel" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%
    // Si no hay sesion iniciada, redirigir a index.jsp
    String action = request.getParameter("action");

    if (action == null) {
    } else if (action.equals("addMovieConfirm")) {
        int message = 0;
        String title = request.getParameter("title");
        String year = request.getParameter("year");
        String duration = request.getParameter("duration");
        String poster = request.getParameter("poster");
        ConnectionModel connectionModel = new ConnectionModel();
        Connection connection = connectionModel.getConnection();
        if (connection != null) {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO movies (title, year, duration, poster) VALUES (?, ?, ?, ?)");
                preparedStatement.setString(1, title);
                preparedStatement.setString(2, year);
                preparedStatement.setString(3, duration);
                preparedStatement.setString(4, poster);
                preparedStatement.executeUpdate();
                preparedStatement.close();
                connection.close();
            } catch (Exception e) {
                session.setAttribute("message", "Esa pelicula ya existe en la base de datos");
                message = 1;
            }

            if (message == 0) {
                response.sendRedirect("indexConten.jsp?action=showMovies");
            }
        }
    } else if (action.equals("addActorConfirm")) {
        int message = 0;
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String yearOfBirth = request.getParameter("yearOfBirth");
        String country = request.getParameter("country");
        String picture = request.getParameter("picture");
        ConnectionModel connectionModel = new ConnectionModel();
        Connection connection = connectionModel.getConnection();
        if (connection != null) {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO people (firstname, lastname, yearOfBirth, country, picture) VALUES (?, ?, ?, ?, ?)");
                preparedStatement.setString(1, firstname);
                preparedStatement.setString(2, lastname);
                preparedStatement.setString(3, yearOfBirth);
                preparedStatement.setString(4, country);
                preparedStatement.setString(5, picture);
                preparedStatement.executeUpdate();
                preparedStatement.close();
                connection.close();
            } catch (Exception e) {
                session.setAttribute("message", "Ese actor ya existe en la base de datos");
                message = 1;
            }

            if (message == 0) {
                response.sendRedirect("indexConten.jsp?action=showActors");
            }
        }
    }
%>
<html>
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
    <!-- Title -->
    <div id="title">
        <%
            if (action == null) {

            } else if (action.equals("showMovies") || action.equals("addMovies")) {
        %>
        <h1>Movies</h1>
        <a href="indexConten.jsp?action=addMovies"><img src="svg/add.svg"></a>
        <%
        } else if (action.equals("showActors") || action.equals("addActor")) {
        %>
        <h1>Actors</h1>
        <a href="indexConten.jsp?action=addActor"><img src="svg/add.svg"></a>
        <%
        } else if (action.equals("showDirectors") || action.equals("addDirect")) {
        %>
        <h1>Directors</h1>
        <%
            }
        %>
    </div>
    <!-- Add date -->
    <div id="add_date">
        <%
            if (action == null) {

            } else if (action.equals("addMovies")) {
        %>
        <div class="form-container">
            <form action="indexConten.jsp?action=addMovieConfirm" method="post" class="form">
                <input type="text" name="title" placeholder="Title" class="input-field" required>
                <input type="text" name="year" placeholder="Year" class="input-field" required>
                <input type="text" name="duration" placeholder="Duration" class="input-field" required>
                <input type="text" name="poster" placeholder="URL de la imagen" class="input-field" required>
                <input type="submit" value="Add" class="submit-button">
            </form>
        </div>
        <%
        } else if (action.equals("addActor")) {
        %>
        <div class="form-container">
            <form action="indexConten.jsp?action=addActorConfirm" method="post" class="form">
                <input type="text" name="firstname" placeholder="Nombre" class="input-field" required>
                <input type="text" name="lastname" placeholder="Apellidos" class="input-field" required>
                <input type="text" name="yearOfBirth" placeholder="A&ntilde;o de naciminto" class="input-field"
                       required>
                <input type="text" name="country" placeholder="Pais" class="input-field" required>
                <input type="text" name="picture" placeholder="URL de la imagen" class="input-field" required>
                <input type="submit" value="Add" class="submit-button">
            </form>
        </div>
        <%
        } else if (action.equals("deleteMovie") || action.equals("deleteActors") || action.equals("deleteDirectors")) {
        %>
        <h4>Estas seguro de que quieres eliminar este registro?</h4>
        <div class="buton_center">
            <a href="indexConten.jsp?action=<%=action%>Confirm&id=<%=request.getParameter("id")%>"><img
                    src="svg/confirmDelete.svg"></a>
            <a href="indexConten.jsp?action=<%switch (action) {case "deleteDirectors": %>showDirectors<%break; case "deleteActors": %>showActors<%break;default:%>showMovies<%}%>">
                <img src="svg/cancelDelete.svg"></a>
        </div>
        <%
            } else if (action.equals("deleteMovieConfirm")) {
                int id = Integer.parseInt(request.getParameter("id"));
                ConnectionModel connectionModel = new ConnectionModel();
                Connection connection = connectionModel.getConnection();
                if (connection != null) {
                    try {
                        PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM movies WHERE id = ?");
                        preparedStatement.setInt(1, id);
                        preparedStatement.executeUpdate();
                        preparedStatement.close();
                        connection.close();
                        session.setAttribute("message", "Pelicula eliminada correctamente");
                    } catch (Exception e) {
                        session.setAttribute("message", "No se puede eliminar la pelicula, esta siendo usada en otra tabla");
                    }
                }

            } else if (action.equals("deleteActorsConfirm")) {
                ConnectionModel connectionModel = new ConnectionModel();
                Connection connection = connectionModel.getConnection();
                if (connection != null) {
                    try {
                        int id = Integer.parseInt(request.getParameter("id"));
                        PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM people WHERE id = ?");
                        preparedStatement.setInt(1, id);
                        preparedStatement.executeUpdate();
                        preparedStatement.close();
                        connection.close();
                        session.setAttribute("message", "Actor eliminado correctamente");
                    } catch (Exception e) {
                        session.setAttribute("message", "No se puede eliminar el actor, esta siendo usado en otra tabla");
                    }
                }
            } else if (action.equals("deleteDirectorsConfirm")) {
                int id = Integer.parseInt(request.getParameter("id"));
                ConnectionModel connectionModel = new ConnectionModel();
                Connection connection = connectionModel.getConnection();
                if (connection != null) {
                    try {
                        PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM direct WHERE idPerson = ?");
                        preparedStatement.setInt(1, id);
                        preparedStatement.executeUpdate();
                        preparedStatement.close();
                        connection.close();
                        session.setAttribute("message", "Director eliminado correctamente");
                    } catch (Exception e) {
                        session.setAttribute("message", "No se puede eliminar el director, esta siendo usado en otra tabla");
                    }
                }
            }
        %>
    </div>
    <!-- Body -->
    <div id="cuerpoPeliiculas">
        <% // Mostrar peliculas
            if (action == null) {
                session.setAttribute("message", "Primero debes iniciar sesion");
                response.sendRedirect("index.jsp");
            } else if (action.equals("showMovies") || action.equals("addMovies")) {
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
                    <a href="indexConten.jsp?action=deleteMovie&id=<%=resultSet.getString("id")%>"><img
                            src="svg/delete.svg"></a>
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
        } else if (action.equals("showActors") || action.equals("addActor")) { // Mostrar actores
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
                    <a href="indexConten.jsp?action=deleteActors&id=<%=resultSet.getString("id")%>"><img
                            src="svg/delete.svg"></a>
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
        } else if (action.equals("showDirectors") || action.equals("addDirect")) { // Mostrar los directores
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
                    <a href="indexConten.jsp?action=deleteDirectors&id=<%=resultSet.getString("id")%>"><img
                            src="svg/delete.svg"></a>
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