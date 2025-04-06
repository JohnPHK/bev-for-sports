package com.app.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getConnectionToDatabase() {
		Connection connection = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("MySQL JDBC Driver Registered!");
//			connection = DriverManager.getConnection("jdbc:mysql://bev4sports-sql:3306/bev4sports", "root", "password");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bev4sports", "root", "password");
		}
		
		catch (ClassNotFoundException e) {
			System.out.println("Where is your MySQL JDBC Driver?");
			e.printStackTrace();
		} 
		
		catch (SQLException e) {
			System.out.println("Connection Failed! Check output console");
			e.printStackTrace();
		}

		if (connection != null) {
			System.out.println("Connection made to DB!");
		}
		return connection;
	}

}
