package com.vienmv.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
	public static Connection getJDBCConnection() {
		Connection connection = null;
		try {
//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//			String user = "maivien";
//			String pass = "maivien1111";
//			String url = "jdbc:sqlserver://localhost:1433;databaseName=UNIFY";
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/UNIFY";
			String user ="root";
			String pass = "CONGtoan223";
			connection = DriverManager.getConnection(url, user, pass);
			System.out.println("thanh cong");

		} catch (ClassNotFoundException | SQLException ex) {
			ex.printStackTrace();
		}

		return connection;
	}
}
