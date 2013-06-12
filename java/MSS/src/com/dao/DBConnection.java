package com.dao;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DBConnection {

	public static Connection getConnection()
	 {
	 Connection con = null;
	 String url = "jdbc:mysql://localhost/kayit"; //for SQL and oracle or any other db server this url differs
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection(url, "root", "");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
		
	}
}