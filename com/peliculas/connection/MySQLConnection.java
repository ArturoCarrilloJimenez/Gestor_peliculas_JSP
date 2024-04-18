package com.peliculas.connection;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class MySQLConnection {

    private DataSource dataSource;

    public MySQLConnection() throws NamingException {
        InitialContext context = new InitialContext();
        dataSource = (DataSource) context.lookup("java:comp/env/jdbc/bd_peliculas");
    }

    public Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

}